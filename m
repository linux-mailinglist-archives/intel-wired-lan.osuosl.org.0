Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 939206A5E41
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 18:34:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 45ED640BF7;
	Tue, 28 Feb 2023 17:34:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45ED640BF7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677605653;
	bh=CWfs1cYxF+A3F9wV2vPHNO+QrO1tkHzRsrn+ALOfrJM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6Ewu5w84lP78KpFqxS1dOnUmEf3evbQQxhWipS/VzUp0hjFYQGG7WlCInuzXzoYQL
	 MRs1CswA92oBxHHEaQ2vUzAHzMv3R3DhX4DB6s6/iHejYtHBerbRRLQvWZPNn76uHo
	 yQWFLqRD7qr7mZuxLSDkzreBeutuacZtDY7c0p8eFEHl3ctsBCC8C+5UXx0hwmW4lH
	 8OW2q0xXvQFPa1oTZsRBbgMZkzaZwaJn3RaHa370JsKrpZwF4saRiryoTDgpU35U3d
	 QJ73ent/LCfHyCsm8E/vTJmjSffyxtfhAXeQ9+RIxF43C3cm4JZIGCRXK4lipo+9uD
	 V/3FBelpmkzYw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0u98Sz2-HIv0; Tue, 28 Feb 2023 17:34:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D179340BEE;
	Tue, 28 Feb 2023 17:34:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D179340BEE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EC91E1D678E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 17:34:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA5FF610C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 17:34:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA5FF610C4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4ov4Zm_VP_Ve for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 17:34:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38B7860EA6
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04on2041.outbound.protection.outlook.com [40.107.8.41])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 38B7860EA6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 17:34:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CdCjg0o8bJyITYlabODY8qh/QWQKZQY8gfigDY+Sn9iXl3WpjumPjlBTizPq9kEP/M/kf0Aq4prTtFFZqOXcNMU1qte7SChVj+hRp4giyu+VdVviK4PvpwBLeY4sccvdtU+ELqUhehYpQEM76cI3JpYBiq5Y88uEeFWWH8WAhuBxd1VETUxJQBwADCILWRvjrfZKR/WUicbQ81UpFRFfH2AfE223shuGmFQeuwks7bWLsUujH4g8herLVnP2LRAmS76bwdFfTDutjDjU//Z7AWLAEgJWeC83lmd7GlA5sEPo6uU40702VSAGeWwRcXxgvcyKEJrQecj0nm2kQcJMrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NOnHg4kdin3roNZDQPpsq6R9mzofLRQ4qqJqvBBNXSM=;
 b=VwOalUtA+zHEsgKbE+1ajyTC5/Pe1Mb3m37FHO0rqsAz9mB56eTyqEudsUCcZaoha5p3TxEJkqxLnOn+T1Sk+ublMSfV3Fn00uH68uAlcqcSGkl2zXLKRQ7Tj41tZVbaykE0qXPc7GJF+N1M1paETWrVsa9VnaUycZnmrRZ/QOC1/K2Tj5tLAeMD5aYKsAgzeEp923AWumTfgaa87+itJvWva1/DlVZT04jE4X3/UGzxAQb1UExXYniPX9hIiIhMcNmpDZg6QSX8c3QnxjmzE3L67p1Zqd2kXf4z3WXxcuYTBLbpBv/wqF9bh6Vgn0pl8n9t6Gt4MwlFnG5edGp5iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by DBBPR04MB8010.eurprd04.prod.outlook.com (2603:10a6:10:1f1::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.29; Tue, 28 Feb
 2023 17:34:01 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::29a3:120c:7d42:3ca8]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::29a3:120c:7d42:3ca8%4]) with mapi id 15.20.6134.030; Tue, 28 Feb 2023
 17:34:01 +0000
Date: Tue, 28 Feb 2023 19:33:57 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20230228173357.ey5ztux2w5syvzrx@skbuf>
References: <20230228054534.1093483-1-vinicius.gomes@intel.com>
 <20230228054534.1093483-1-vinicius.gomes@intel.com>
 <20230228054534.1093483-2-vinicius.gomes@intel.com>
 <20230228054534.1093483-2-vinicius.gomes@intel.com>
Content-Disposition: inline
In-Reply-To: <20230228054534.1093483-2-vinicius.gomes@intel.com>
 <20230228054534.1093483-2-vinicius.gomes@intel.com>
X-ClientProxiedBy: BE1P281CA0114.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:7b::20) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|DBBPR04MB8010:EE_
X-MS-Office365-Filtering-Correlation-Id: 3df42833-342c-4bf8-e9fb-08db19b1fa9e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4mJfGlsURI/r8KfYLJoo1WFhQukR0tCmJ7WChJI7RLZ642fmfqJorw2H7eSyGIJkZa1AKaC4raxIXGfDpunYM7BIyw71JvwuBfHJdMIfkptJklnmy6+qScmtfZ5CVD1Z1YfNptDAfjga8fsQwcdluKSK95cysBTCFXUNm1rW6ZoB6e/pK5/Dv6lg94IJem8yhEClqE7ed4h/lSVk2MgafZmEobmSYpH51Yt16LA+tvR7K9WyfqJfSVzjHLi+clfJXsjak5MRIsCEQcmQE68qjeXl1g1Xc9R7QSfzlSQMj5sv3QsW5A51m3sCxJEhmVY+oQBhqp/GG8sTcbH6E5UDJyan1iaIbTrlT6Pkl6x1/m1eSd9F7tSt+B1OAFLFGkS6iJScxqBsgXD4UQZHijDuNnMFG4SBxYtfIpo9s5R+LODQ2Djn4/F7TC/QJZJO3NOp0/iH4TI6NAW5WdKXIWDLbV4EreF/aUMwDU1au+OEQvIgkvWEt3e0JEdBp89i/q6wfwaToNCT/aZL9hCKz64D1rphlZfcWoPoc5SKZC6jBXE230Y6PHRu+pkZjXDvyw9ve4nBlqklSpsypNeS9WXJJNIeXrytkjh9BjLrhIFOpn9SIZ/CnWDxD4ixEpwcJh+LFhaCF0YLZJUWo4LY0xkvtQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(4636009)(396003)(39860400002)(136003)(376002)(346002)(366004)(451199018)(9686003)(186003)(2906002)(38100700002)(83380400001)(41300700001)(66476007)(6512007)(66556008)(66946007)(8936002)(8676002)(5660300002)(4326008)(44832011)(478600001)(1076003)(6916009)(26005)(6666004)(6506007)(33716001)(86362001)(316002)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5aB5+KKtTZEBtwWeIsa4/IedmwhG41H9Sey3m9fOtQJ3Werc9HqjyxaEl7eK?=
 =?us-ascii?Q?LkJ6cnPV4Dea0Gowrf8LuxOgqY9ylh0iDhQ/hgn4Nt8Wpn9IO7CnMDVZw8T3?=
 =?us-ascii?Q?qEA/T7X1au7/F/yu6C6aiEjWdErFJlUttNEhROVmWEGNMURtmkaC2YkXWqDa?=
 =?us-ascii?Q?KBiKCzGhEF3uOEASFFsfIti4CFos93g305wRt31U9SUVa0URr0TxiAkMl7nv?=
 =?us-ascii?Q?gGYTF4IlKodve47oH4IRvM/kobrCTh4+1nzPDYUGtlA0XTYM1aGpk18XVsw1?=
 =?us-ascii?Q?6A7HjlZEm5j52imvtyCz1iMzl0aCI7FsIoouP7pzDIDWA7rxRQRIl+Kt+5US?=
 =?us-ascii?Q?A42UhWX+4xmJKTHw3A2PNrCTEMCCzGFpAv7nNCz8b+j3v6mcC69Po0nOZZPr?=
 =?us-ascii?Q?C7fkrerTA3RBsclEQB+OcSDH8jBseAIDfnvIAGwHtmJ8rHzn/Fw+WpiwPn5/?=
 =?us-ascii?Q?CGd46C9Sg3gHFIeIwuGLNMZpVq2bihFb19T9v3iUGIK1hZ/HP6xap++sDO6v?=
 =?us-ascii?Q?DxsFG8P5Tt5Fm7SFzAHeNW28eX0n7/JyDH+aenAO4UjKnFSt8tXSQNPAJsoM?=
 =?us-ascii?Q?PNbEHj86snpreQ/ikmk6YBvfkMnsmAAnefQiztZ625oV4uuxF0T10hxfZAL7?=
 =?us-ascii?Q?C3pojbqszt70zYmY0sOM+6THVX95SmwxpCFlktapmYScZvj0w7kE6QqJue2O?=
 =?us-ascii?Q?Cs0jkMUATabYJPeLZtKIqz84Mp+OyL++94qhkONKJOWeoZCRr1Ro2MHmZEnq?=
 =?us-ascii?Q?gmmaxH56ZWLudp5bePLwp1z32JhY2KXIR+IC+5YOJYZK/AB8Q1KQk9AoiT6X?=
 =?us-ascii?Q?THppymgiYGpHmhYYoVMpbIts2Nbb65HC/dNLkNi1I2FyzGWeoWUJU6s2Myft?=
 =?us-ascii?Q?0bN0q/hFB0I4/EyrFWGVcFEpyqgo0VJXy41eheuHUI7Jvc8sRbLCleNfJv1C?=
 =?us-ascii?Q?jiPRDc89KUIAUP5TJ4P0Z0wIQPuGfnYB5VM2lsI1KIeWwHVrBmB8fc4maaCq?=
 =?us-ascii?Q?7Z2lYcQYvjfRdBdMi62QZS9+cIJ9rRM8ljvIpDDl0RgOwhtkrZIluslqc/eo?=
 =?us-ascii?Q?xnaIs44N5O9K5MrC58s3vkJEz+wvTeeCH/lhdA6so6SdgibPfI6VdSFOSeoG?=
 =?us-ascii?Q?o9LWqpgKE/kQFtvSJxkoVFwEcWg26Ciurf2s8+AzbZYjHOlZK8FOrI3UPvvk?=
 =?us-ascii?Q?XPgIGDqk+ZgyisYSr+GHOj+NX8It6GI+wCqwEJbaI/Z5f/w+6M63H7vVwv4R?=
 =?us-ascii?Q?k9LTxX6jahpIHFmgnk+b1kR2Ee9P2L9gjYMhddbZyCLZe8ORi1zGXUniq2yS?=
 =?us-ascii?Q?D+8Jy0uzh1k4lksCUXx71C8DAcriV/7VzVcMvd06ZNEd/ZQSZRiXnM5IFtEr?=
 =?us-ascii?Q?UPb3buCyOGY0OCQ5hCK2FZGszSgeMDrluazoFwo/7Pc3jv701Xp3g9ufxvKz?=
 =?us-ascii?Q?VG+gqjECMOyJ3PWpEeOjt0y7q4dcAnMhVGc/4XUdteatg+UQPA5eK6/jG7zs?=
 =?us-ascii?Q?cvGE4LP5LdYODeZPVhNj0ivjLdsXf5pC7Ddwq5hw77AFwySX1/z6WUU2X5Nk?=
 =?us-ascii?Q?EtSaz9AnZm+xxk9IUQKF91xWFv2gG6vo6Q255pjxcjL4p9GqcyRApEQAISq6?=
 =?us-ascii?Q?8A=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3df42833-342c-4bf8-e9fb-08db19b1fa9e
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2023 17:34:00.9243 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EcGqcSSoEdtA0mzQcXDqwYVPDnbbF23ZbLbevmTQOjhiOeDoS4AqdMaVJfohw49A0Hl95eQ8xsQYw6dB1DGmjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB8010
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NOnHg4kdin3roNZDQPpsq6R9mzofLRQ4qqJqvBBNXSM=;
 b=jRsZ7JUB94bLt64ekhj1Eo9BwkRwPKnMJIxu0DWzLfTb/tW5nkO7JC+5IVspUDEy1qBwxIP5PdlpM/GYA1fk+12b2T4iwgyrznhfi35BpNbv6K3ehATI7kRYDhZlHkbCdVIlWIECwBizSORG/q4D8I4luZn/bN2vX0ohlvhPMzQ=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=jRsZ7JUB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 1/3] igc: Fix race
 condition in PTP tx code
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
Cc: kurt@linutronix.de, anthony.l.nguyen@intel.com,
 Andre Guedes <andre.guedes@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vinicius,

Some small comments, feel free to ignore them.

On Mon, Feb 27, 2023 at 09:45:32PM -0800, Vinicius Costa Gomes wrote:
> From: Andre Guedes <andre.guedes@intel.com>
> 
> Currently, the igc driver supports timestamping only one tx packet at a
> time. During the transmission flow, the skb that requires hardware
> timestamping is saved in adapter->ptp_tx_skb. Once hardware has the
> timestamp, an interrupt is delivered, and adapter->ptp_tx_work is
> scheduled. In igc_ptp_tx_work(), we read the timestamp register, update
> adapter->ptp_tx_skb, and notify the network stack.
> 
> While the thread executing the transmission flow (the user process
> running in kernel mode) and the thread executing ptp_tx_work don't
> access adapter->ptp_tx_skb concurrently, there are two other places
> where adapter->ptp_tx_skb is accessed: igc_ptp_tx_hang() and
> igc_ptp_suspend().
> 
> igc_ptp_tx_hang() is executed by the adapter->watchdog_task worker
> thread which runs periodically so it is possible we have two threads
> accessing ptp_tx_skb at the same time. Consider the following scenario:
> right after __IGC_PTP_TX_IN_PROGRESS is set in igc_xmit_frame_ring(),
> igc_ptp_tx_hang() is executed. Since adapter->ptp_tx_start hasn't been
> written yet, this is considered a timeout and adapter->ptp_tx_skb is
> cleaned up.
> 
> This patch fixes the issue described above by adding the ptp_tx_lock to
> protect access to ptp_tx_skb and ptp_tx_start fields from igc_adapter.
> Since igc_xmit_frame_ring() called in atomic context by the networking
> stack, ptp_tx_lock is defined as a spinlock.
> 
> With the introduction of the ptp_tx_lock, the __IGC_PTP_TX_IN_PROGRESS
> flag doesn't provide much of a use anymore so this patch gets rid of it.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---

Shouldn't this have a Fixes: tag and be sent to the 'net' queue, since
it fixes a bug which can be seen in the real world?

>  drivers/net/ethernet/intel/igc/igc.h      |  5 +-
>  drivers/net/ethernet/intel/igc/igc_main.c |  8 +++-
>  drivers/net/ethernet/intel/igc/igc_ptp.c  | 57 +++++++++++++++--------
>  3 files changed, 47 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index df3e26c0cf01..e804a566bdd3 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -227,6 +227,10 @@ struct igc_adapter {
>  	struct ptp_clock *ptp_clock;
>  	struct ptp_clock_info ptp_caps;
>  	struct work_struct ptp_tx_work;
> +	/* Access to ptp_tx_skb and ptp_tx_start is protected by the
> +	 * ptp_tx_lock.
> +	 */
> +	spinlock_t ptp_tx_lock;
>  	struct sk_buff *ptp_tx_skb;
>  	struct hwtstamp_config tstamp_config;
>  	unsigned long ptp_tx_start;
> @@ -401,7 +405,6 @@ enum igc_state_t {
>  	__IGC_TESTING,
>  	__IGC_RESETTING,
>  	__IGC_DOWN,
> -	__IGC_PTP_TX_IN_PROGRESS,
>  };
>  
>  enum igc_tx_flags {
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 2928a6c73692..84c9c6e09054 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -1565,14 +1565,16 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
>  
>  	if (unlikely(skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)) {
>  		struct igc_adapter *adapter = netdev_priv(tx_ring->netdev);
> +		unsigned long flags;
> +
> +		spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
>  
>  		/* FIXME: add support for retrieving timestamps from
>  		 * the other timer registers before skipping the
>  		 * timestamping request.
>  		 */
>  		if (adapter->tstamp_config.tx_type == HWTSTAMP_TX_ON &&
> -		    !test_and_set_bit_lock(__IGC_PTP_TX_IN_PROGRESS,
> -					   &adapter->state)) {
> +		    !adapter->ptp_tx_skb) {
>  			skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
>  			tx_flags |= IGC_TX_FLAGS_TSTAMP;
>  
> @@ -1581,6 +1583,8 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
>  		} else {
>  			adapter->tx_hwtstamp_skipped++;

unrelated: when adapter->tstamp_config.tx_type != HWTSTAMP_TX_ON but
skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP was set, it simply means
that the timestamp is "not for you". For example igc is a DSA master for
a PTP-capable switch. Should adapter->tx_hwtstamp_skipped increment in
that case? I mean, timestamps are skipped, but is it worth bumping a
user-visible counter for what is essentially the normal thing to do?

>  		}
> +
> +		spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
>  	}
>  
>  	if (skb_vlan_tag_present(skb)) {
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index 4e10ced736db..9247395911c9 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -603,14 +603,15 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
>  	return 0;
>  }
>  
> +/* Requires adapter->ptp_tx_lock held by caller. */
>  static void igc_ptp_tx_timeout(struct igc_adapter *adapter)
>  {
>  	struct igc_hw *hw = &adapter->hw;
>  
>  	dev_kfree_skb_any(adapter->ptp_tx_skb);
>  	adapter->ptp_tx_skb = NULL;
> +	adapter->ptp_tx_start = 0;

what's the reason for setting this to 0? (here, there and everywhere)

>  	adapter->tx_hwtstamp_timeouts++;
> -	clear_bit_unlock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state);
>  	/* Clear the tx valid bit in TSYNCTXCTL register to enable interrupt. */
>  	rd32(IGC_TXSTMPH);
>  	netdev_warn(adapter->netdev, "Tx timestamp timeout\n");
> @@ -618,20 +619,20 @@ static void igc_ptp_tx_timeout(struct igc_adapter *adapter)
>  
>  void igc_ptp_tx_hang(struct igc_adapter *adapter)
>  {
> -	bool timeout = time_is_before_jiffies(adapter->ptp_tx_start +
> -					      IGC_PTP_TX_TIMEOUT);
> -
> -	if (!test_bit(__IGC_PTP_TX_IN_PROGRESS, &adapter->state))
> -		return;
> -
> -	/* If we haven't received a timestamp within the timeout, it is
> -	 * reasonable to assume that it will never occur, so we can unlock the
> -	 * timestamp bit when this occurs.
> -	 */
> -	if (timeout) {
> -		cancel_work_sync(&adapter->ptp_tx_work);
> -		igc_ptp_tx_timeout(adapter);
> -	}
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
> +
> +	if (!adapter->ptp_tx_skb)
> +		goto unlock;
> +
> +	if (time_is_after_jiffies(adapter->ptp_tx_start + IGC_PTP_TX_TIMEOUT))
> +		goto unlock;
> +
> +	igc_ptp_tx_timeout(adapter);
> +
> +unlock:
> +	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
>  }
>  
>  /**
> @@ -641,6 +642,8 @@ void igc_ptp_tx_hang(struct igc_adapter *adapter)
>   * If we were asked to do hardware stamping and such a time stamp is
>   * available, then it must have been for this skb here because we only
>   * allow only one such packet into the queue.
> + *
> + * Context: Expects adapter->ptp_tx_lock to be held by caller.
>   */
>  static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
>  {
> @@ -682,7 +685,7 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
>  	 * while we're notifying the stack.
>  	 */

This comment just became obsolete:

	/* Clear the lock early before calling skb_tstamp_tx so that
	 * applications are not woken up before the lock bit is clear. We use
	 * a copy of the skb pointer to ensure other threads can't change it
	 * while we're notifying the stack.
	 */

it gets removed in one of the later patches.

I suppose this doesn't make a real difference unless this change gets
backported as a fix to stable kernels and the others don't.

>  	adapter->ptp_tx_skb = NULL;
> -	clear_bit_unlock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state);
> +	adapter->ptp_tx_start = 0;
>  
>  	/* Notify the stack and free the skb after we've unlocked */
>  	skb_tstamp_tx(skb, &shhwtstamps);
> @@ -701,16 +704,22 @@ static void igc_ptp_tx_work(struct work_struct *work)
>  	struct igc_adapter *adapter = container_of(work, struct igc_adapter,
>  						   ptp_tx_work);
>  	struct igc_hw *hw = &adapter->hw;
> +	unsigned long flags;
>  	u32 tsynctxctl;
>  
> -	if (!test_bit(__IGC_PTP_TX_IN_PROGRESS, &adapter->state))
> -		return;
> +	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
> +
> +	if (!adapter->ptp_tx_skb)
> +		goto unlock;
>  
>  	tsynctxctl = rd32(IGC_TSYNCTXCTL);
>  	if (WARN_ON_ONCE(!(tsynctxctl & IGC_TSYNCTXCTL_TXTT_0)))
> -		return;
> +		goto unlock;
>  
>  	igc_ptp_tx_hwtstamp(adapter);
> +
> +unlock:
> +	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
>  }
>  
>  /**
> @@ -960,6 +969,7 @@ void igc_ptp_init(struct igc_adapter *adapter)
>  	}
>  
>  	spin_lock_init(&adapter->tmreg_lock);
> +	spin_lock_init(&adapter->ptp_tx_lock);
>  	INIT_WORK(&adapter->ptp_tx_work, igc_ptp_tx_work);
>  
>  	adapter->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
> @@ -1017,13 +1027,20 @@ static void igc_ptm_stop(struct igc_adapter *adapter)
>   */
>  void igc_ptp_suspend(struct igc_adapter *adapter)
>  {
> +	unsigned long flags;
> +
>  	if (!(adapter->ptp_flags & IGC_PTP_ENABLED))
>  		return;
>  
>  	cancel_work_sync(&adapter->ptp_tx_work);
> +
> +	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
> +
>  	dev_kfree_skb_any(adapter->ptp_tx_skb);
>  	adapter->ptp_tx_skb = NULL;
> -	clear_bit_unlock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state);
> +	adapter->ptp_tx_start = 0;
> +
> +	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
>  
>  	if (pci_device_is_present(adapter->pdev)) {
>  		igc_ptp_time_save(adapter);
> -- 
> 2.39.2
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
