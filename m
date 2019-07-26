Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 103327610D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2019 10:42:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8A03226FD7;
	Fri, 26 Jul 2019 08:42:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2a0D1LqbimjC; Fri, 26 Jul 2019 08:42:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8B46926CAE;
	Fri, 26 Jul 2019 08:41:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DFF511BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 08:41:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DC3EC89F4F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 08:41:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hEInsn9Ll9rT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2019 08:41:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B741389F4B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 08:41:54 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 01:41:54 -0700
X-IronPort-AV: E=Sophos;i="5.64,310,1559545200"; d="scan'208";a="172972957"
Received: from bricha3-mobl.ger.corp.intel.com ([10.252.21.226])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 01:41:50 -0700
Date: Fri, 26 Jul 2019 09:41:47 +0100
From: Bruce Richardson <bruce.richardson@intel.com>
To: Jonathan Lemon <jonathan.lemon@gmail.com>
Message-ID: <20190726084147.GA1624@bricha3-MOBL.ger.corp.intel.com>
References: <20190716030637.5634-1-kevin.laatz@intel.com>
 <20190724051043.14348-1-kevin.laatz@intel.com>
 <94EAD717-F632-499F-8BBD-FFF5A5333CBF@gmail.com>
 <59AF69C657FD0841A61C55336867B5B07EDB5C3F@IRSMSX103.ger.corp.intel.com>
 <8189384E-6050-4389-AA6A-09CD86FE8829@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8189384E-6050-4389-AA6A-09CD86FE8829@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: maximmi@mellanox.com, jakub.kicinski@netronome.com, daniel@iogearbox.net,
 "Laatz, Kevin" <kevin.laatz@intel.com>, "Loftus,
 Ciara" <ciara.loftus@intel.com>, ast@kernel.org, stephen@networkplumber.org,
 saeedm@mellanox.com, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 bpf@vger.kernel.org, "Topel, Bjorn" <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jul 25, 2019 at 10:30:51AM -0700, Jonathan Lemon wrote:
> 
> 
> On 25 Jul 2019, at 8:56, Richardson, Bruce wrote:
> 
> >> -----Original Message-----
> >> From: Jonathan Lemon [mailto:jonathan.lemon@gmail.com]
> >> Sent: Thursday, July 25, 2019 4:39 PM
> >> To: Laatz, Kevin <kevin.laatz@intel.com>
> >> Cc: netdev@vger.kernel.org; ast@kernel.org; daniel@iogearbox.net; Topel,
> >> Bjorn <bjorn.topel@intel.com>; Karlsson, Magnus
> >> <magnus.karlsson@intel.com>; jakub.kicinski@netronome.com;
> >> saeedm@mellanox.com; maximmi@mellanox.com; stephen@networkplumber.org;
> >> Richardson, Bruce <bruce.richardson@intel.com>; Loftus, Ciara
> >> <ciara.loftus@intel.com>; bpf@vger.kernel.org; intel-wired-
> >> lan@lists.osuosl.org
> >> Subject: Re: [PATCH bpf-next v3 00/11] XDP unaligned chunk placement
> >> support
> >>
> >>
> >>
> >> On 23 Jul 2019, at 22:10, Kevin Laatz wrote:
> >>
> >>> This patch set adds the ability to use unaligned chunks in the XDP umem.
> >>>
> >>> Currently, all chunk addresses passed to the umem are masked to be
> >>> chunk size aligned (max is PAGE_SIZE). This limits where we can place
> >>> chunks within the umem as well as limiting the packet sizes that are
> >> supported.
> >>>
> >>> The changes in this patch set removes these restrictions, allowing XDP
> >>> to be more flexible in where it can place a chunk within a umem. By
> >>> relaxing where the chunks can be placed, it allows us to use an
> >>> arbitrary buffer size and place that wherever we have a free address
> >>> in the umem. These changes add the ability to support arbitrary frame
> >>> sizes up to 4k
> >>> (PAGE_SIZE) and make it easy to integrate with other existing
> >>> frameworks that have their own memory management systems, such as DPDK.
> >>> In DPDK, for example, there is already support for AF_XDP with zero-
> >> copy.
> >>> However, with this patch set the integration will be much more seamless.
> >>> You can find the DPDK AF_XDP driver at:
> >>> https://git.dpdk.org/dpdk/tree/drivers/net/af_xdp
> >>>
> >>> Since we are now dealing with arbitrary frame sizes, we need also need
> >>> to update how we pass around addresses. Currently, the addresses can
> >>> simply be masked to 2k to get back to the original address. This
> >>> becomes less trivial when using frame sizes that are not a 'power of
> >>> 2' size. This patch set modifies the Rx/Tx descriptor format to use
> >>> the upper 16-bits of the addr field for an offset value, leaving the
> >>> lower 48-bits for the address (this leaves us with 256 Terabytes,
> >>> which should be enough!). We only need to use the upper 16-bits to store
> >> the offset when running in unaligned mode.
> >>> Rather than adding the offset (headroom etc) to the address, we will
> >>> store it in the upper 16-bits of the address field. This way, we can
> >>> easily add the offset to the address where we need it, using some bit
> >>> manipulation and addition, and we can also easily get the original
> >>> address wherever we need it (for example in i40e_zca_fr-- ee) by
> >>> simply masking to get the lower 48-bits of the address field.
> >>
> >> I wonder if it would be better to break backwards compatibility here and
> >> say that a handle is going to change from [addr] to [base | offset], or
> >> even [index | offset], where address = (index * chunk size) + offset, and
> >> then use accessor macros to manipulate the queue entries.
> >>
> >> This way, the XDP hotpath can adjust the handle with simple arithmetic,
> >> bypassing the "if (unaligned)", check, as it changes the offset directly.
> >>
> >> Using a chunk index instead of a base address is safer, otherwise it is
> >> too easy to corrupt things.
> >> --
> >
> > The trouble with using a chunk index is that it assumes that all chunks are
> > contiguous, which is not always going to be the case. For example, for
> > userspace apps the easiest way to get memory that is IOVA/physically
> > contiguous is to use hugepages, but even then we still need to skip space
> > when crossing a 2MB barrier.
> >
> > Specifically in this example case, with a 3k buffer size and 2MB hugepages,
> > we'd get 666 buffers on a single page, but then waste a few KB before
> > starting the 667th buffer at byte 0 on the second 2MB page.
> > This is the setup used in DPDK, for instance, when we allocate memory for
> > use in buffer pools.
> >
> > Therefore, I think it's better to just have the kernel sanity checking the
> > request for safety and leave userspace the freedom to decide where in its
> > memory area it wants to place the buffers.
> 
> That makes sense, thanks.  My concern is that this makes it difficult for
> the kernel to validate the buffer start address, but perhaps that isn't a
> concern.
> 
I don't think that's a problem right now, since the start address is still
an offset into the umem, and so must be between 0 and size (or size -
chunk_size, more specifically). Are there other checks that should be
performed on it, do you think?

> I still believe it would simplify things if the format was [base | offset],
> any opinion on that?

Can you perhaps clarify what you mean here. Are you suggesting globally
changing the address format to always use this, irrespective of chunk
alignment, or something else?

Regards,
/Bruce
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
