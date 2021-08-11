Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3063E8BCB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Aug 2021 10:27:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1684040482;
	Wed, 11 Aug 2021 08:27:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0QuV-Awn6e1Q; Wed, 11 Aug 2021 08:27:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B075D40487;
	Wed, 11 Aug 2021 08:27:32 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 80B291BF4E2
 for <intel-wired-lan@osuosl.org>; Wed, 11 Aug 2021 08:27:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6E40883267
 for <intel-wired-lan@osuosl.org>; Wed, 11 Aug 2021 08:27:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RKY4RPC3PFzS for <intel-wired-lan@osuosl.org>;
 Wed, 11 Aug 2021 08:27:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 907968321B
 for <intel-wired-lan@osuosl.org>; Wed, 11 Aug 2021 08:27:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10072"; a="213229179"
X-IronPort-AV: E=Sophos;i="5.84,311,1620716400"; d="scan'208";a="213229179"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2021 01:27:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,311,1620716400"; d="scan'208";a="672685216"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga006.fm.intel.com with ESMTP; 11 Aug 2021 01:27:26 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 11 Aug 2021 01:27:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 11 Aug 2021 01:27:26 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 11 Aug 2021 01:27:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XwznT5EEnqZdWivuwJjJql+ppTW7XkRhX6WuDitWApBXReYbhnF2c0nkLLM97AkE40y7hSVQoISVS+x5LDubNL83kqiviJtSvr1rOuFTS+wDq4UfJhnR+WqJvc/46r5FusUj/IlSOsc3/L5Zx4YyC/lOCXqfpa04fzC38p7gI59RQ+Ipe/92pVJXogC40mBdN2d9k6TLvQKPyWgsBtRGLAxMgnYXayUYyQoTtjXtLSOxMGRDQbdLjjJ1eJCsdUQaRLUKq++r6GAgCYykrfHrCrMf1o49XUc7eoii6+QwDIk2c5EE6xrQc4dVWLXWUTaoqZjanEBHy5aoQNaS3kwkBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zLR6/00reHc0CXZUgV+P1t0FjHq83xx8MxFZFQL1nsw=;
 b=AuIqP9cCxEqqJbXzEEt9DLpQ793yIJvyrNUEgR/N3J6xR0cuv9CEgOb4VA2nUu9p3cVm2uZpYhzIC4gRHGl15TbMv0ZruqPa4iXwHeJvH8+Z13gEZTKP/P8BSEtn/ZGMKKh4YxdkjahzQs6nZR39G2OJ8HzKuMYiBclTcrJGiPuaS7OmJFfnjBR3Kz36DsVB5hjyaDT+Ow1MUDEacTia4fZz50QjyJ2BhQG7lcsZLKzHhITwHQseC0p+tMOMPV+za2YSTZCwgsbunM50KtDTR1UL8ktEps1KlwnaW1fH9xOgi3Q3FaTsdsei14lD3XG0V71T6xDlBlLLZsXWTTEiIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zLR6/00reHc0CXZUgV+P1t0FjHq83xx8MxFZFQL1nsw=;
 b=pawWoXZLnLqNtnhRkeJDTj+IprD9TDegSKjVGCKTc6hapu/+r77viKlZhj3QhCXqddC4hIdpKZs3G4VZmcuH2eDGhyj9fhSjgq2e0gKgKMkCPgvqQOBYgxN4CFjYNr9UGTvBEYPFkOOMCSHFETRT1yMXShcWTiX3sOti6IIhJ78=
Received: from BYAPR11MB3079.namprd11.prod.outlook.com (2603:10b6:a03:92::16)
 by BYAPR11MB2966.namprd11.prod.outlook.com (2603:10b6:a03:84::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.21; Wed, 11 Aug
 2021 08:27:24 +0000
Received: from BYAPR11MB3079.namprd11.prod.outlook.com
 ([fe80::dcf9:9373:540f:8014]) by BYAPR11MB3079.namprd11.prod.outlook.com
 ([fe80::dcf9:9373:540f:8014%4]) with mapi id 15.20.4394.023; Wed, 11 Aug 2021
 08:27:24 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: Ken Cox <jkc@redhat.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ixgbe: Add locking to prevent panic
 when setting sriov_numvfs to zero.
Thread-Index: AQHXjR0jDTiWtLD0/EeU3IQS+DvKI6tt+k6w
Date: Wed, 11 Aug 2021 08:27:24 +0000
Message-ID: <BYAPR11MB307938BF655D3C9DEB5E0555E6F89@BYAPR11MB3079.namprd11.prod.outlook.com>
References: <20210809125003.679140-1-jkc@redhat.com>
In-Reply-To: <20210809125003.679140-1-jkc@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ce02b9bd-1a29-40c9-9ecd-08d95ca1d8fb
x-ms-traffictypediagnostic: BYAPR11MB2966:
x-microsoft-antispam-prvs: <BYAPR11MB29664F755757D7F76F9B826BE6F89@BYAPR11MB2966.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sj/6elmhoSc/tqw+lJf22E/kr3i5c3SafZ2oOGnJ0BLkh5ecWTHaml6VkR9nB0SpRgikkNYuDPpSHabsHsaOdRq/Ll2xuU9PsZRC2nb2JRC9p8qZfM4kmtjOomaanVFD2u6HO9EvVJ1JBf1KQ2awcpx0/l8oxOtTzeSo29WbdmriRXBtq7fCo29xYnbzJxRjscLV/oVef+6igr14ZxR4aFpAnZsabPA6wNylkosw5KKfjmZHZAKj7eudw8bjQnJlNkePUNGlBSbUEY2w+/tufTJgGFJqBxm/XEQIvr1bE3JOh52DS+CrCrnGmK486ooxL6SMWUv5xOpaMfg7XfC1mQFWH52SkPtIBgDkfF46FwLwNIgPN0C2Y2kZyYA8qxpelDnf1HydlrpzdiFhLpoecdmdhcs5rbHDKNAAP4uOffC78YXD70TuAqXZ7ABKhcA6XaIy0qLGZwS9bXpAVYRUok5f35jCDkuOYS5hXUf1zavPQiUY+4TDDB7QsgOZfned/9YG52CP755cE3ypfSmhC1bKnTf7GhzUZ6gm5qsM7u2FCycZzub48L/pQUrKQ2eLfGttpEctjG/e1BSipVzMpBgWZClLk1fmR3b5Li3ej0pXvGuX0h3UxrSoc6OjeYPrBxGJBUw7cy7lUlgZIj8pRmCVxeEz1iLbcOC9TTPF9n06FjSspcatA83dqQCub85wx7rtoMp95hbn2D+nDxp/Eg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3079.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(52536014)(508600001)(5660300002)(66446008)(64756008)(66556008)(7696005)(26005)(186003)(66476007)(33656002)(316002)(6506007)(83380400001)(2906002)(110136005)(66946007)(55016002)(9686003)(38100700002)(122000001)(38070700005)(86362001)(71200400001)(8676002)(8936002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7Dwjs2+KgksCgvFgHSVCBFFhzjsLB5GSXqIQs3dvFmbXAANyOAJnsJn4r8hb?=
 =?us-ascii?Q?WiDhyyeuW+B3AaeROeromZPbrYWDz8DPyByeR7OYoZaNV6rALgCsNmeVr6/e?=
 =?us-ascii?Q?N/6uT1nPhDd0In37h+o3OUlTZwF0pwh24c9P++QAGS5i1rDHESxmbaX04Bg+?=
 =?us-ascii?Q?yhc2FtGQAvZxsOnhP7+MUI6hD/iQDuX2Bn0syH600fPCuyKtd1BA/a7Bp6gl?=
 =?us-ascii?Q?iOQngulxqQwRNiN5x76rKNtbw9aKgMBdbUxgNAFEM/l+qDrcju6l/SqtU5RE?=
 =?us-ascii?Q?7v0iJRE6/VTns97gQKij8CTaT/6jo1w8RcnCY8oZQO1ZY/rsL7d7JPAYS31D?=
 =?us-ascii?Q?DxYIwg68ugBFztprg2wmmNHNbXOlumgGRG4xJgHo0Sr6XMSk2YdNqAikntST?=
 =?us-ascii?Q?87ww7vvJSa+l5QNqqA/wnV3JN7a89qiIFV76XWf18C6C3Dv5zIGcanMvYZvW?=
 =?us-ascii?Q?CZo5DrARPIV1r8G4URjdwVOR0KQyk7jbYgbWSNPuqdwxywtVttnlfyu5enQK?=
 =?us-ascii?Q?xVsNK/xdLJ+QSjA0ZqXMRTlHKrdCvRcVU5RIfZtKrSXQ1vZtS2qZtfJt6snM?=
 =?us-ascii?Q?e+flGo2hGO/OAtOZ9AJUathImpH+otuvsRzHkKBhy8egmtOrNlFfQqF6vYMl?=
 =?us-ascii?Q?wFAgguOyHL8YNOgcXw7YZ/T/BIndolZwgCPoqkWs8qoH/VzweKC0CDnaaNwh?=
 =?us-ascii?Q?/zYL6/19WW/5xvpnVQ60DmwGxM2zxZy/+LKMfw0GcAWUywefwmLkzPrzBe8x?=
 =?us-ascii?Q?ozDiRM+HPoVqejYwaqcKrAAaIMzKCv70MGEiSMsAgFdJSUQMU3VQwp7JkMVU?=
 =?us-ascii?Q?vteWbQjydUlE82oVopwMLVbHXtjM/+ye1pBSEJoExSCKdQfpikJsp3RkxRVv?=
 =?us-ascii?Q?9wmCTl7VKKqKMqF3yp9Fu0tX8xQK3NQayHjatd+kC212fPFdEvjKWyNXt5sq?=
 =?us-ascii?Q?s0EU4VyZinmG4QNUAUhFwGNDR45xXAtesZz/gNG3DbpgzJgCFy2KydIQ3jl2?=
 =?us-ascii?Q?yA88YE87N8srS0DDGMbBiuGbzI7q/E7RqVZR29/j5pHTL3sG4XGLUKRyE3Iz?=
 =?us-ascii?Q?a1opYbVoDOBupsXlOuny3e+fgBOq0LK6TSCYxPGDL6QCRdBI2YbUvDH6quuw?=
 =?us-ascii?Q?55OOsA0MVCZgWap/ExCQn0SVFBTyoBaS7tWAHAyjvoCau7NmBRjnFQc1QCLh?=
 =?us-ascii?Q?Bz9QdyEeRbkgOktORLrV3Xu6NAZJajmNMU6sX0ommCi/FaO5ZJ7ng3+ZYWKJ?=
 =?us-ascii?Q?Bc8Jf6paLj1d6XA6HvQStNR/AuvYdCMk5uESjGqTCEOdaO4j1aQIVMu8r4F/?=
 =?us-ascii?Q?1tK9kOp98zoALIzkXka46dp+?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3079.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce02b9bd-1a29-40c9-9ecd-08d95ca1d8fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2021 08:27:24.8345 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nz4iokIX70Zh606S1SsJP/xFKQ5l2DFyeChh5mtryH+Uell+JsJQl59pjlj2qFpDNGuZ9AUBS7QiA201JTLYzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2966
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Add locking to prevent panic
 when setting sriov_numvfs to zero.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It is possible to disable VFs while the PF driver is processing requests from the VF driver.  This can result in a panic.

BUG: unable to handle kernel paging request at 000000000000106c PGD 0 P4D 0
Oops: 0000 [#1] SMP NOPTI
CPU: 8 PID: 0 Comm: swapper/8 Kdump: loaded Tainted: G          I      --------- -  -
Hardware name: Dell Inc. PowerEdge R740/06WXJT, BIOS 2.8.2 08/27/2020
RIP: 0010:ixgbe_msg_task+0x4c8/0x1690 [ixgbe]
Code: 00 00 48 8d 04 40 48 c1 e0 05 89 7c 24 24 89 fd 48 89 44 24 10 83 ff 01 0f 84 b8 04 00 00 4c 8b 64 24 10 4d 03 a5 48 22 00 00 <41> 80 7c 24 4c 00 0f 84 8a 03 00 00 0f b7 c7 83 f8 08 0f 84 8f 0a
RSP: 0018:ffffb337869f8df8 EFLAGS: 00010002
RAX: 0000000000001020 RBX: 0000000000000000 RCX: 000000000000002b
RDX: 0000000000000002 RSI: 0000000000000008 RDI: 0000000000000006
RBP: 0000000000000006 R08: 0000000000000002 R09: 0000000000029780
R10: 00006957d8f42832 R11: 0000000000000000 R12: 0000000000001020
R13: ffff8a00e8978ac0 R14: 000000000000002b R15: ffff8a00e8979c80
FS:  0000000000000000(0000) GS:ffff8a07dfd00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000000000000106c CR3: 0000000063e10004 CR4: 00000000007726e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
PKRU: 55555554
Call Trace:
 <IRQ>
 ? ttwu_do_wakeup+0x19/0x140
 ? try_to_wake_up+0x1cd/0x550
 ? ixgbevf_update_xcast_mode+0x71/0xc0 [ixgbevf]
 ixgbe_msix_other+0x17e/0x310 [ixgbe]
 __handle_irq_event_percpu+0x40/0x180
 handle_irq_event_percpu+0x30/0x80
 handle_irq_event+0x36/0x53
 handle_edge_irq+0x82/0x190
 handle_irq+0x1c/0x30
 do_IRQ+0x49/0xd0
 common_interrupt+0xf/0xf

This can be eventually be reproduced with the following script:

while :
do
	echo 63 > /sys/class/net/ens3f0/device/sriov_numvfs
	sleep 1
	echo 0 > /sys/class/net/ens3f0/device/sriov_numvfs
        sleep 1
done

Signed-off-by: Ken Cox <jkc@redhat.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h       | 1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c | 9 +++++++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index a604552fa634..696bb2a61ea7 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -807,6 +807,7 @@ enum ixgbe_state_t {
 	__IXGBE_PTP_RUNNING,
 	__IXGBE_PTP_TX_IN_PROGRESS,
 	__IXGBE_RESET_REQUESTED,
+	__IXGBE_DISABLING_VFS,
 };
 
 struct ixgbe_cb {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index 214a38de3f41..e2df7729876d 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -206,8 +206,12 @@ int ixgbe_disable_sriov(struct ixgbe_adapter *adapter)
 	unsigned int num_vfs = adapter->num_vfs, vf;
 	int rss;
 
+       while (test_and_set_bit(__IXGBE_DISABLING_VFS, &adapter->state))
+               usleep_range(1000, 2000);
+
 	/* set num VFs to 0 to prevent access to vfinfo */
 	adapter->num_vfs = 0;
+	clear_bit(__IXGBE_DISABLING_VFS, &adapter->state);
 
 	/* put the reference to all of the vf devices */
 	for (vf = 0; vf < num_vfs; ++vf) {
@@ -1292,6 +1296,7 @@ static int ixgbe_rcv_msg_from_vf(struct ixgbe_adapter *adapter, u32 vf)
 	return retval;
 }
 
+
 static void ixgbe_rcv_ack_from_vf(struct ixgbe_adapter *adapter, u32 vf)  {
 	struct ixgbe_hw *hw = &adapter->hw;
@@ -1307,6 +1312,9 @@ void ixgbe_msg_task(struct ixgbe_adapter *adapter)
 	struct ixgbe_hw *hw = &adapter->hw;
 	u32 vf;
 
+	if (test_and_set_bit(__IXGBE_DISABLING_VFS, &adapter->state))
+		return;
+
 	for (vf = 0; vf < adapter->num_vfs; vf++) {
 		/* process any reset requests */
 		if (!ixgbe_check_for_rst(hw, vf))
@@ -1320,6 +1328,7 @@ void ixgbe_msg_task(struct ixgbe_adapter *adapter)
 		if (!ixgbe_check_for_ack(hw, vf))
 			ixgbe_rcv_ack_from_vf(adapter, vf);
 	}
+	clear_bit(__IXGBE_DISABLING_VFS, &adapter->state);
 }
 
 void ixgbe_disable_tx_rx(struct ixgbe_adapter *adapter)
--
2.26.3

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
