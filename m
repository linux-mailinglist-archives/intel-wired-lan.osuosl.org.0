Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C004B2C85A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Aug 2025 17:23:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7BD5D608C5;
	Tue, 19 Aug 2025 15:23:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WHevRU5RlZim; Tue, 19 Aug 2025 15:23:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEF8A60AFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755616997;
	bh=TB0qNR0SEwJRdxY8s9wEQYgP9m0pbeXDRFVyU84GPyM=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mCBjSBqb07IWkDRdmEpLjWNrbysMX4g79EwReL5oyve+vxqzUzBNizwIV46Aa1xeE
	 aKYAyD3Hh7rs9R9iZGq8jF83d3NPO62iZ+ryFbZBDH5IlNnWtjRQdTefxqcy76i0+E
	 Yy/jT4UbfvntYaUh+larN2MSIrgW/309UYxH7B+treB+yEo51xuiFUmZzaEEKJXpWQ
	 IdAL9QyLP6iASBx8VxyEQr+Rklop1s1hN6YL92YvLDA53w6Y8/9nx62J7uSqxlBhDE
	 8+Qsb8WZ+pcT1L0N76qTTvmGApbyaJew4H+mQWzPvI/fbzLqjr8BXbjHvMTXZ/sCcl
	 JidWiYhLvev6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEF8A60AFD;
	Tue, 19 Aug 2025 15:23:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 423A6DE6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 06:31:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3F7A980F6C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 06:31:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x-KnGv6zFenb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Aug 2025 06:31:10 +0000 (UTC)
X-Greylist: delayed 1543 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 19 Aug 2025 06:31:09 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9C55F80F6B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C55F80F6B
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=67.231.156.173;
 helo=mx0b-0016f401.pphosted.com;
 envelope-from=prvs=732632abe1=sbhatta@marvell.com; receiver=<UNKNOWN> 
Received: from mx0b-0016f401.pphosted.com (mx0b-0016f401.pphosted.com
 [67.231.156.173])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9C55F80F6B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 06:31:09 +0000 (UTC)
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57INWaPb004812;
 Mon, 18 Aug 2025 23:05:18 -0700
Received: from dc5-exch05.marvell.com ([199.233.59.128])
 by mx0b-0016f401.pphosted.com (PPS) with ESMTPS id 48mdx0gm08-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 18 Aug 2025 23:05:18 -0700 (PDT)
Received: from DC5-EXCH05.marvell.com (10.69.176.209) by
 DC5-EXCH05.marvell.com (10.69.176.209) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 18 Aug 2025 23:05:22 -0700
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH05.marvell.com
 (10.69.176.209) with Microsoft SMTP Server id 15.2.1544.25 via Frontend
 Transport; Mon, 18 Aug 2025 23:05:22 -0700
Received: from opensource (unknown [10.29.8.22])
 by maili.marvell.com (Postfix) with SMTP id 4FB253F704F;
 Mon, 18 Aug 2025 23:05:13 -0700 (PDT)
Date: Tue, 19 Aug 2025 06:05:12 +0000
From: Subbaraya Sundeep <sbhatta@marvell.com>
To: Michal Schmidt <mschmidt@redhat.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexander Duyck <alexander.h.duyck@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Message-ID: <aKNU1YnfNbXYhUyj@opensource>
References: <20250818153903.189079-1-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250818153903.189079-1-mschmidt@redhat.com>
X-Proofpoint-GUID: l9xTP6HBH2e_0mEtNWTxDdxGK_zSUXWR
X-Proofpoint-ORIG-GUID: l9xTP6HBH2e_0mEtNWTxDdxGK_zSUXWR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE5MDA1NiBTYWx0ZWRfX3oVAofVUB1Wx
 jqiAW+/Me2Bdho8ExZdWk6o4s+QKkHdowTu7AlRtIsqDi4h/63XkGp+N1kK/faVlwTh/TZC3jHd
 duv2mEviLAOz2uh//3SolXuC1rgKhAJn+fak6c8HRbtI/y7k2TTPzimMv1DkcWKe409m/4VH4Bu
 XFqZ1MLNinyQJ5wqT0cW5PeHNe2R9agU9jphxzEL9f0iYDDvRe09aG3F5MYg7fZlnqqZ9oPJlPa
 T5iJNTGXUFdjTSXXpc02jGSdhsLvFI++F1geDi4/1Nh+ADLmknwU/JDTU07db5wkxiAkjIURfCW
 gc7+52NZ1gpDZmD+PkfyZfJJDjKZjPY/QhFdzyzs0urPPMmAs06NvtDFyHqIVi0tsUaU7/Z95ao
 cXz2bNrDB/CeLqG/O9+G+JgooinIK5L4eepe2uutBt8e1uU+09L7EWtMrfd8+QhT79F4wIsb
X-Authority-Analysis: v=2.4 cv=D4hHKuRj c=1 sm=1 tr=0 ts=68a4141e cx=c_pps
 a=rEv8fa4AjpPjGxpoe8rlIQ==:117 a=rEv8fa4AjpPjGxpoe8rlIQ==:17
 a=kj9zAlcOel0A:10 a=2OwXVqhp2XgA:10 a=20KFwNOVAAAA:8 a=M5GUcnROAAAA:8
 a=I6fm6gUqSGKCge1PFHkA:9 a=CjuIK1q_8ugA:10
 a=OBjm3rFKGHvpk9ecZwUJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Mailman-Approved-At: Tue, 19 Aug 2025 15:23:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=pfpt0220; bh=TB0qNR0SEwJRdxY8s9wEQYgP9
 m0pbeXDRFVyU84GPyM=; b=cXhhhMiFKQhwLTHhBhY9XXs6hHV7aEDm/cDK0l0Qw
 pLnMritCxNJRxaTjAdUSJxSRHJeTY4+OC5Lm7rheAuQSPxIAMDUe8bFcKXl92WRJ
 8GJmbNpPnnFeMp+rtnCGbuPWB8QoMXUmv5Kg6xDK/Q4fyXN/WcLsNwD1Q9Sg6Rw+
 iRs0z5WTEtjjWUTw7/EbbmAL0KcLIedYgvm0nnKbT61sH1s3la9ukEY0/S5G2/If
 PaYHOSm5C0IVs9DLUnYSo06SroG0RWyjWQcW6f1wXeaLkh8UIwV2qPABNwS4w4Bh
 hXIkLoaFu1HvQmHyagXdkEzQ+eVvCbqmcsNpN3k1oyWTQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=marvell.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=marvell.com header.i=@marvell.com header.a=rsa-sha256
 header.s=pfpt0220 header.b=cXhhhMiF
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: fix IRQ freeing in
 i40e_vsi_request_irq_msix error path
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

Hi Michal,

On 2025-08-18 at 15:39:03, Michal Schmidt (mschmidt@redhat.com) wrote:
> If request_irq() in i40e_vsi_request_irq_msix() fails in an iteration
> later than the first, the error path wants to free the IRQs requested
> so far. However, it uses the wrong dev_id argument for free_irq(), so
> it does not free the IRQs correctly and instead triggers the warning:
> 
>  Trying to free already-free IRQ 173
>  WARNING: CPU: 25 PID: 1091 at kernel/irq/manage.c:1829 __free_irq+0x192/0x2c0
>  Modules linked in: i40e(+) [...]
>  CPU: 25 UID: 0 PID: 1091 Comm: NetworkManager Not tainted 6.17.0-rc1+ #1 PREEMPT(lazy)
>  Hardware name: [...]
>  RIP: 0010:__free_irq+0x192/0x2c0
>  [...]
>  Call Trace:
>   <TASK>
>   free_irq+0x32/0x70
>   i40e_vsi_request_irq_msix.cold+0x63/0x8b [i40e]
>   i40e_vsi_request_irq+0x79/0x80 [i40e]
>   i40e_vsi_open+0x21f/0x2f0 [i40e]
>   i40e_open+0x63/0x130 [i40e]
>   __dev_open+0xfc/0x210
>   __dev_change_flags+0x1fc/0x240
>   netif_change_flags+0x27/0x70
>   do_setlink.isra.0+0x341/0xc70
>   rtnl_newlink+0x468/0x860
>   rtnetlink_rcv_msg+0x375/0x450
>   netlink_rcv_skb+0x5c/0x110
>   netlink_unicast+0x288/0x3c0
>   netlink_sendmsg+0x20d/0x430
>   ____sys_sendmsg+0x3a2/0x3d0
>   ___sys_sendmsg+0x99/0xe0
>   __sys_sendmsg+0x8a/0xf0
>   do_syscall_64+0x82/0x2c0
>   entry_SYSCALL_64_after_hwframe+0x76/0x7e
>   [...]
>   </TASK>
>  ---[ end trace 0000000000000000 ]---
> 
> Use the same dev_id for free_irq() as for request_irq().
> 
> I tested this with inserting code to fail intentionally.
> 
Nice. Looks like changing this in i40e_vsi_request_irq_msix was missed
during 493fb30011b3. Just a question isn't this not throwing any
compilation warning all these days?
Anyway LGTM.

Reviewed-by: Subbaraya Sundeep <sbhatta@marvell.com>

Thanks,
Sundeep

> Fixes: 493fb30011b3 ("i40e: Move q_vectors from pointer to array to array of pointers")
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index b83f823e4917..dd21d93d39dd 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -4156,7 +4156,7 @@ static int i40e_vsi_request_irq_msix(struct i40e_vsi *vsi, char *basename)
>  		irq_num = pf->msix_entries[base + vector].vector;
>  		irq_set_affinity_notifier(irq_num, NULL);
>  		irq_update_affinity_hint(irq_num, NULL);
> -		free_irq(irq_num, &vsi->q_vectors[vector]);
> +		free_irq(irq_num, vsi->q_vectors[vector]);
>  	}
>  	return err;
>  }
> -- 
> 2.50.1
> 
