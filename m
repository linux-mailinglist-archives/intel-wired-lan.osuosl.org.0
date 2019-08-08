Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 66272868F7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2019 20:43:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A0D0B87659;
	Thu,  8 Aug 2019 18:43:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JEvLSdveEZtf; Thu,  8 Aug 2019 18:43:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7288987589;
	Thu,  8 Aug 2019 18:43:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4622F1BF38B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 18:43:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4208E87F38
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 18:43:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9kvuh3CYbJZG for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2019 18:43:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2A91F87EE8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 18:43:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 11:42:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,362,1559545200"; d="scan'208";a="258799512"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga001.jf.intel.com with ESMTP; 08 Aug 2019 11:42:55 -0700
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 8 Aug 2019 11:42:55 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX158.amr.corp.intel.com ([169.254.10.82]) with mapi id 14.03.0439.000;
 Thu, 8 Aug 2019 11:42:55 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH v3 1/1] ixgbe: sync the first fragment unconditionally
Thread-Index: AQHVTZ5IOEeUaPwZuEuqOf/M8/vBiqbxltMw
Date: Thu, 8 Aug 2019 18:42:55 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40F4D7@ORSMSX104.amr.corp.intel.com>
References: <20190808040312.21719-1-firo.yang@suse.com>
In-Reply-To: <20190808040312.21719-1-firo.yang@suse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYjMxNGEyYWUtMjc4OS00ZjU5LWE4ZjItOTg5ODZhOWFmMDliIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVzZYTVhFdGh0TktPY1laeUpoRDR6QTRxcU5WYmFGTzFXUTZsZ2pkdUhxaFcwdlE4WVA3bkNXSVlNQ2FNbnU4RyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3 1/1] ixgbe: sync the first fragment
 unconditionally
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Firo Yang
> Sent: Wednesday, August 7, 2019 9:04 PM
> To: netdev@vger.kernel.org
> Cc: maciejromanfijalkowski@gmail.com; Firo Yang <firo.yang@suse.com>;
> linux-kernel@vger.kernel.org; intel-wired-lan@lists.osuosl.org;
> jian.w.wen@oracle.com; alexander.h.duyck@linux.intel.com;
> davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH v3 1/1] ixgbe: sync the first fragment
> unconditionally
> 
> In Xen environment, if Xen-swiotlb is enabled, ixgbe driver could possibly
> allocate a page, DMA memory buffer, for the first fragment which is not
> suitable for Xen-swiotlb to do DMA operations.
> Xen-swiotlb have to internally allocate another page for doing DMA
> operations. This mechanism requires syncing the data from the internal page
> to the page which ixgbe sends to upper network stack. However, since
> commit f3213d932173 ("ixgbe: Update driver to make use of DMA attributes
> in Rx path"), the unmap operation is performed with
> DMA_ATTR_SKIP_CPU_SYNC. As a result, the sync is not performed.
> Since the sync isn't performed, the upper network stack could receive a
> incomplete network packet. By incomplete, it means the linear data on the
> first fragment(between skb->head and skb->end) is invalid. So we have to
> copy the data from the internal xen-swiotlb page to the page which ixgbe
> sends to upper network stack through the sync operation.
> 
> More details from Alexander Duyck:
> Specifically since we are mapping the frame with
> DMA_ATTR_SKIP_CPU_SYNC we have to unmap with that as well. As a result
> a sync is not performed on an unmap and must be done manually as we
> skipped it for the first frag. As such we need to always sync before possibly
> performing a page unmap operation.
> 
> Fixes: f3213d932173 ("ixgbe: Update driver to make use of DMA attributes in
> Rx path")
> Reviewed-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> Signed-off-by: Firo Yang <firo.yang@suse.com>
> ---
> Changes from v2:
>  * Added details on the problem caused by skipping the sync.
>  * Added more explanation from Alexander Duyck.
> 
> Changes from v1:
>  * Imporved the patch description.
>  * Added Reviewed-by: and Fixes: as suggested by Alexander Duyck.
> 
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
