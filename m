Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B27575349
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 17:56:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 38CB520433;
	Thu, 25 Jul 2019 15:56:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZGNUQDMD5h4y; Thu, 25 Jul 2019 15:56:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A7FD822253;
	Thu, 25 Jul 2019 15:56:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 11BBD1BF2CA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 15:56:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0C4F185308
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 15:56:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vFpsjc1Js+bJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 15:56:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C05938518E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 15:56:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 08:56:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="197920389"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
 by fmsmga002.fm.intel.com with ESMTP; 25 Jul 2019 08:56:17 -0700
Received: from irsmsx103.ger.corp.intel.com ([169.254.3.45]) by
 IRSMSX102.ger.corp.intel.com ([169.254.2.59]) with mapi id 14.03.0439.000;
 Thu, 25 Jul 2019 16:56:16 +0100
From: "Richardson, Bruce" <bruce.richardson@intel.com>
To: Jonathan Lemon <jonathan.lemon@gmail.com>, "Laatz, Kevin"
 <kevin.laatz@intel.com>
Thread-Topic: [PATCH bpf-next v3 00/11] XDP unaligned chunk placement support
Thread-Index: AQHVQv8nG1Zh3ZxuZEyx+Rx8z76G9qbbeLcQ
Date: Thu, 25 Jul 2019 15:56:15 +0000
Message-ID: <59AF69C657FD0841A61C55336867B5B07EDB5C3F@IRSMSX103.ger.corp.intel.com>
References: <20190716030637.5634-1-kevin.laatz@intel.com>
 <20190724051043.14348-1-kevin.laatz@intel.com>
 <94EAD717-F632-499F-8BBD-FFF5A5333CBF@gmail.com>
In-Reply-To: <94EAD717-F632-499F-8BBD-FFF5A5333CBF@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiM2NhNDczOWYtNDEyMy00NGNmLWIyMjItODJkN2U2ODI4ZWY3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMWtIU2tZWEFWemNWbTEzeTRETzF5OU1yZXcra0dhc3liUkNHbGtcL2t2YW9hbTdjWDFpQlNqSXFBQ2xwSWtBYmgifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v3 00/11] XDP unaligned chunk
 placement support
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
Cc: "maximmi@mellanox.com" <maximmi@mellanox.com>,
 "jakub.kicinski@netronome.com" <jakub.kicinski@netronome.com>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loftus,
 Ciara" <ciara.loftus@intel.com>, "ast@kernel.org" <ast@kernel.org>,
 "stephen@networkplumber.org" <stephen@networkplumber.org>,
 "saeedm@mellanox.com" <saeedm@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, "Topel, 
 Bjorn" <bjorn.topel@intel.com>, "Karlsson, Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Jonathan Lemon [mailto:jonathan.lemon@gmail.com]
> Sent: Thursday, July 25, 2019 4:39 PM
> To: Laatz, Kevin <kevin.laatz@intel.com>
> Cc: netdev@vger.kernel.org; ast@kernel.org; daniel@iogearbox.net; Topel,
> Bjorn <bjorn.topel@intel.com>; Karlsson, Magnus
> <magnus.karlsson@intel.com>; jakub.kicinski@netronome.com;
> saeedm@mellanox.com; maximmi@mellanox.com; stephen@networkplumber.org;
> Richardson, Bruce <bruce.richardson@intel.com>; Loftus, Ciara
> <ciara.loftus@intel.com>; bpf@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org
> Subject: Re: [PATCH bpf-next v3 00/11] XDP unaligned chunk placement
> support
> 
> 
> 
> On 23 Jul 2019, at 22:10, Kevin Laatz wrote:
> 
> > This patch set adds the ability to use unaligned chunks in the XDP umem.
> >
> > Currently, all chunk addresses passed to the umem are masked to be
> > chunk size aligned (max is PAGE_SIZE). This limits where we can place
> > chunks within the umem as well as limiting the packet sizes that are
> supported.
> >
> > The changes in this patch set removes these restrictions, allowing XDP
> > to be more flexible in where it can place a chunk within a umem. By
> > relaxing where the chunks can be placed, it allows us to use an
> > arbitrary buffer size and place that wherever we have a free address
> > in the umem. These changes add the ability to support arbitrary frame
> > sizes up to 4k
> > (PAGE_SIZE) and make it easy to integrate with other existing
> > frameworks that have their own memory management systems, such as DPDK.
> > In DPDK, for example, there is already support for AF_XDP with zero-
> copy.
> > However, with this patch set the integration will be much more seamless.
> > You can find the DPDK AF_XDP driver at:
> > https://git.dpdk.org/dpdk/tree/drivers/net/af_xdp
> >
> > Since we are now dealing with arbitrary frame sizes, we need also need
> > to update how we pass around addresses. Currently, the addresses can
> > simply be masked to 2k to get back to the original address. This
> > becomes less trivial when using frame sizes that are not a 'power of
> > 2' size. This patch set modifies the Rx/Tx descriptor format to use
> > the upper 16-bits of the addr field for an offset value, leaving the
> > lower 48-bits for the address (this leaves us with 256 Terabytes,
> > which should be enough!). We only need to use the upper 16-bits to store
> the offset when running in unaligned mode.
> > Rather than adding the offset (headroom etc) to the address, we will
> > store it in the upper 16-bits of the address field. This way, we can
> > easily add the offset to the address where we need it, using some bit
> > manipulation and addition, and we can also easily get the original
> > address wherever we need it (for example in i40e_zca_fr-- ee) by
> > simply masking to get the lower 48-bits of the address field.
> 
> I wonder if it would be better to break backwards compatibility here and
> say that a handle is going to change from [addr] to [base | offset], or
> even [index | offset], where address = (index * chunk size) + offset, and
> then use accessor macros to manipulate the queue entries.
> 
> This way, the XDP hotpath can adjust the handle with simple arithmetic,
> bypassing the "if (unaligned)", check, as it changes the offset directly.
> 
> Using a chunk index instead of a base address is safer, otherwise it is
> too easy to corrupt things.
> --

The trouble with using a chunk index is that it assumes that all chunks are
contiguous, which is not always going to be the case. For example, for
userspace apps the easiest way to get memory that is IOVA/physically 
contiguous is to use hugepages, but even then we still need to skip space
when crossing a 2MB barrier.

Specifically in this example case, with a 3k buffer size and 2MB hugepages,
we'd get 666 buffers on a single page, but then waste a few KB before
starting the 667th buffer at byte 0 on the second 2MB page.
This is the setup used in DPDK, for instance, when we allocate memory for
use in buffer pools. 

Therefore, I think it's better to just have the kernel sanity checking the
request for safety and leave userspace the freedom to decide where in its
memory area it wants to place the buffers.

Regards,
/Bruce
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
