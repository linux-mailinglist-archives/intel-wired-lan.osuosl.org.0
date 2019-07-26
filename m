Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE55762E4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2019 11:58:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3BD6B89EF5;
	Fri, 26 Jul 2019 09:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DNRRjueFBzQm; Fri, 26 Jul 2019 09:58:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DF30489EFD;
	Fri, 26 Jul 2019 09:58:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5EC351BF592
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 09:58:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5AA8089EF6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 09:58:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9EmfjjRlt4J0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2019 09:58:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2D2D989EF5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 09:58:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 02:58:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,310,1559545200"; 
 d="scan'208,217";a="172149675"
Received: from klaatz-mobl1.ger.corp.intel.com (HELO [10.237.221.70])
 ([10.237.221.70])
 by fmsmga007.fm.intel.com with ESMTP; 26 Jul 2019 02:58:15 -0700
From: "Laatz, Kevin" <kevin.laatz@intel.com>
To: Jonathan Lemon <jonathan.lemon@gmail.com>
References: <20190716030637.5634-1-kevin.laatz@intel.com>
 <20190724051043.14348-1-kevin.laatz@intel.com>
 <20190724051043.14348-4-kevin.laatz@intel.com>
 <E0F8C5B9-A4CD-47CD-8C72-F840161D178E@gmail.com>
 <096504af-35a9-7604-7c06-e500224256ea@intel.com>
Message-ID: <15523237-8aab-f341-3af9-57b8ab65be03@intel.com>
Date: Fri, 26 Jul 2019 10:58:14 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <096504af-35a9-7604-7c06-e500224256ea@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v3 03/11] xsk: add support to
 allow unaligned chunk placement
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
 netdev@vger.kernel.org, ciara.loftus@intel.com, ast@kernel.org,
 stephen@networkplumber.org, saeedm@mellanox.com,
 intel-wired-lan@lists.osuosl.org, bruce.richardson@intel.com,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: multipart/mixed; boundary="===============0750708410181803475=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a multi-part message in MIME format.
--===============0750708410181803475==
Content-Type: multipart/alternative;
 boundary="------------C78002754FFA9C87167D1E82"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------C78002754FFA9C87167D1E82
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 26/07/2019 10:47, Laatz, Kevin wrote:
> On 25/07/2019 16:39, Jonathan Lemon wrote:
>> On 23 Jul 2019, at 22:10, Kevin Laatz wrote:
>>
>>> Currently, addresses are chunk size aligned. This means, we are very
>>> restricted in terms of where we can place chunk within the umem. For
>>> example, if we have a chunk size of 2k, then our chunks can only be 
>>> placed
>>> at 0,2k,4k,6k,8k... and so on (ie. every 2k starting from 0).
>>>
>>> This patch introduces the ability to use unaligned chunks. With these
>>> changes, we are no longer bound to having to place chunks at a 2k (or
>>> whatever your chunk size is) interval. Since we are no longer 
>>> dealing with
>>> aligned chunks, they can now cross page boundaries. Checks for page
>>> contiguity have been added in order to keep track of which pages are
>>> followed by a physically contiguous page.
>>>
>>> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
>>> Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
>>> Signed-off-by: Bruce Richardson <bruce.richardson@intel.com>
>>>
>>> ---
>>> v2:
>>>   - Add checks for the flags coming from userspace
>>>   - Fix how we get chunk_size in xsk_diag.c
>>>   - Add defines for masking the new descriptor format
>>>   - Modified the rx functions to use new descriptor format
>>>   - Modified the tx functions to use new descriptor format
>>>
>>> v3:
>>>   - Add helper function to do address/offset masking/addition
>>> ---
>>>  include/net/xdp_sock.h      | 17 ++++++++
>>>  include/uapi/linux/if_xdp.h |  9 ++++
>>>  net/xdp/xdp_umem.c          | 18 +++++---
>>>  net/xdp/xsk.c               | 86 ++++++++++++++++++++++++++++++-------
>>>  net/xdp/xsk_diag.c          |  2 +-
>>>  net/xdp/xsk_queue.h         | 68 +++++++++++++++++++++++++----
>>>  6 files changed, 170 insertions(+), 30 deletions(-)
>>>
>>> diff --git a/include/net/xdp_sock.h b/include/net/xdp_sock.h
>>> index 69796d264f06..738996c0f995 100644
>>> --- a/include/net/xdp_sock.h
>>> +++ b/include/net/xdp_sock.h
>>> @@ -19,6 +19,7 @@ struct xsk_queue;
>>>  struct xdp_umem_page {
>>>      void *addr;
>>>      dma_addr_t dma;
>>> +    bool next_pg_contig;
>>>  };
>>>
>>>  struct xdp_umem_fq_reuse {
>>> @@ -48,6 +49,7 @@ struct xdp_umem {
>>>      bool zc;
>>>      spinlock_t xsk_list_lock;
>>>      struct list_head xsk_list;
>>> +    u32 flags;
>>>  };
>>>
>>>  struct xdp_sock {
>>> @@ -144,6 +146,15 @@ static inline void xsk_umem_fq_reuse(struct 
>>> xdp_umem *umem, u64 addr)
>>>
>>>      rq->handles[rq->length++] = addr;
>>>  }
>>> +
>>> +static inline u64 xsk_umem_handle_offset(struct xdp_umem *umem, u64 
>>> handle,
>>> +                     u64 offset)
>>> +{
>>> +    if (umem->flags & XDP_UMEM_UNALIGNED_CHUNKS)
>>> +        return handle |= (offset << XSK_UNALIGNED_BUF_OFFSET_SHIFT);
>>> +    else
>>> +        return handle += offset;
>>> +}
>>
>> This should be something like 'xsk_umem_adjust_offset()', and use 
>> "+=" for both cases.
>
> I'll try to come up with a better name for this, I see how 
> "handle_offset" could be misleading :)
>
> In terms of the "+=", we can't do that for both. We need to use | for 
> the unaligned case since we store the offset in the upper 16-bits of 
> the address field so that we leave the lower 48-bits (the original 
> base address) untouched.
>
Correction, we can do "+=". With that, the lower 48-bits will still 
remain untouched though, so we still have the original address :)
>
> <...>
>
>>>
>>>      if (!PAGE_ALIGNED(addr)) {
>>> @@ -331,9 +335,11 @@ static int xdp_umem_reg(struct xdp_umem *umem, 
>>> struct xdp_umem_reg *mr)
>>>      if (chunks == 0)
>>>          return -EINVAL;
>>>
>>> -    chunks_per_page = PAGE_SIZE / chunk_size;
>>> -    if (chunks < chunks_per_page || chunks % chunks_per_page)
>>> -        return -EINVAL;
>>> +    if (!unaligned_chunks) {
>>> +        chunks_per_page = PAGE_SIZE / chunk_size;
>>> +        if (chunks < chunks_per_page || chunks % chunks_per_page)
>>> +            return -EINVAL;
>>> +    }
>>>
>>>      headroom = ALIGN(headroom, 64);
>>>
>>> @@ -342,13 +348,15 @@ static int xdp_umem_reg(struct xdp_umem *umem, 
>>> struct xdp_umem_reg *mr)
>>>          return -EINVAL;
>>>
>>>      umem->address = (unsigned long)addr;
>>> -    umem->chunk_mask = ~((u64)chunk_size - 1);
>>> +    umem->chunk_mask = unaligned_chunks ? XSK_UNALIGNED_BUF_ADDR_MASK
>>> +                        : ~((u64)chunk_size - 1);
>>
>> The handle needs to be cleaned (reset to base address) when removed
>> from the fill queue or recycle stack.  This will not provide the correct
>> semantics for unaligned mode.
>
> When we use aligned mode, the chunk mask is ~0x07FF which will remove 
> the low 11-bits in order to get us back to the original base address.
>
> In unaligned mode, the chunk mask is ~0xFFFF00....00 which will remove 
> the upper 16-bits. This will remove the offset from the address field 
> and, since we have not directly modified the low 48-bits (original 
> base address), leave us with the original base address.
>
> Cleaning the handle will therefore work as it does now, using the 
> appropriate mask based on which mode we are using.
>
> <...>
>
>>>
>>>          if (xskq_produce_addr_lazy(umem->cq, desc->addr))
>>> @@ -243,7 +269,7 @@ static int xsk_generic_xmit(struct sock *sk, 
>>> struct msghdr *m,
>>>      if (xs->queue_id >= xs->dev->real_num_tx_queues)
>>>          goto out;
>>>
>>> -    while (xskq_peek_desc(xs->tx, &desc)) {
>>> +    while (xskq_peek_desc(xs->tx, &desc, xs->umem)) {
>>>          char *buffer;
>>>          u64 addr;
>>>          u32 len;
>>> @@ -262,6 +288,10 @@ static int xsk_generic_xmit(struct sock *sk, 
>>> struct msghdr *m,
>>>
>>>          skb_put(skb, len);
>>>          addr = desc.addr;
>>> +        if (xs->umem->flags & XDP_UMEM_UNALIGNED_CHUNKS)
>>> +            addr = (addr & XSK_UNALIGNED_BUF_ADDR_MASK) |
>>> +                (addr >> XSK_UNALIGNED_BUF_OFFSET_SHIFT);
>>
>> This doesn't look right to me.  Shouldn't it be "(addr & mask) + 
>> (addr >> shift)"?
>> I'd also prefer to see this type of logic in an inline/macro
>
> Will fix in the v4, thanks!
>
> I'll look to move this to an inline function as well.
>
> <...>

--------------C78002754FFA9C87167D1E82
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">On 26/07/2019 10:47, Laatz, Kevin
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:096504af-35a9-7604-7c06-e500224256ea@intel.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <div class="moz-cite-prefix">On 25/07/2019 16:39, Jonathan Lemon
        wrote:<br>
      </div>
      <blockquote type="cite"
        cite="mid:E0F8C5B9-A4CD-47CD-8C72-F840161D178E@gmail.com"> On 23
        Jul 2019, at 22:10, Kevin Laatz wrote: <br>
        <br>
        <blockquote type="cite">Currently, addresses are chunk size
          aligned. This means, we are very <br>
          restricted in terms of where we can place chunk within the
          umem. For <br>
          example, if we have a chunk size of 2k, then our chunks can
          only be placed <br>
          at 0,2k,4k,6k,8k... and so on (ie. every 2k starting from 0).
          <br>
          <br>
          This patch introduces the ability to use unaligned chunks.
          With these <br>
          changes, we are no longer bound to having to place chunks at a
          2k (or <br>
          whatever your chunk size is) interval. Since we are no longer
          dealing with <br>
          aligned chunks, they can now cross page boundaries. Checks for
          page <br>
          contiguity have been added in order to keep track of which
          pages are <br>
          followed by a physically contiguous page. <br>
          <br>
          Signed-off-by: Kevin Laatz <a class="moz-txt-link-rfc2396E"
            href="mailto:kevin.laatz@intel.com" moz-do-not-send="true">&lt;kevin.laatz@intel.com&gt;</a>
          <br>
          Signed-off-by: Ciara Loftus <a class="moz-txt-link-rfc2396E"
            href="mailto:ciara.loftus@intel.com" moz-do-not-send="true">&lt;ciara.loftus@intel.com&gt;</a>
          <br>
          Signed-off-by: Bruce Richardson <a
            class="moz-txt-link-rfc2396E"
            href="mailto:bruce.richardson@intel.com"
            moz-do-not-send="true">&lt;bruce.richardson@intel.com&gt;</a>
          <br>
          <br>
          --- <br>
          v2: <br>
            - Add checks for the flags coming from userspace <br>
            - Fix how we get chunk_size in xsk_diag.c <br>
            - Add defines for masking the new descriptor format <br>
            - Modified the rx functions to use new descriptor format <br>
            - Modified the tx functions to use new descriptor format <br>
          <br>
          v3: <br>
            - Add helper function to do address/offset masking/addition
          <br>
          --- <br>
           include/net/xdp_sock.h      | 17 ++++++++ <br>
           include/uapi/linux/if_xdp.h |  9 ++++ <br>
           net/xdp/xdp_umem.c          | 18 +++++--- <br>
           net/xdp/xsk.c               | 86
          ++++++++++++++++++++++++++++++------- <br>
           net/xdp/xsk_diag.c          |  2 +- <br>
           net/xdp/xsk_queue.h         | 68
          +++++++++++++++++++++++++---- <br>
           6 files changed, 170 insertions(+), 30 deletions(-) <br>
          <br>
          diff --git a/include/net/xdp_sock.h b/include/net/xdp_sock.h <br>
          index 69796d264f06..738996c0f995 100644 <br>
          --- a/include/net/xdp_sock.h <br>
          +++ b/include/net/xdp_sock.h <br>
          @@ -19,6 +19,7 @@ struct xsk_queue; <br>
           struct xdp_umem_page { <br>
               void *addr; <br>
               dma_addr_t dma; <br>
          +    bool next_pg_contig; <br>
           }; <br>
          <br>
           struct xdp_umem_fq_reuse { <br>
          @@ -48,6 +49,7 @@ struct xdp_umem { <br>
               bool zc; <br>
               spinlock_t xsk_list_lock; <br>
               struct list_head xsk_list; <br>
          +    u32 flags; <br>
           }; <br>
          <br>
           struct xdp_sock { <br>
          @@ -144,6 +146,15 @@ static inline void
          xsk_umem_fq_reuse(struct xdp_umem *umem, u64 addr) <br>
          <br>
               rq-&gt;handles[rq-&gt;length++] = addr; <br>
           } <br>
          + <br>
          +static inline u64 xsk_umem_handle_offset(struct xdp_umem
          *umem, u64 handle, <br>
          +                     u64 offset) <br>
          +{ <br>
          +    if (umem-&gt;flags &amp; XDP_UMEM_UNALIGNED_CHUNKS) <br>
          +        return handle |= (offset &lt;&lt;
          XSK_UNALIGNED_BUF_OFFSET_SHIFT); <br>
          +    else <br>
          +        return handle += offset; <br>
          +} <br>
        </blockquote>
        <br>
        This should be something like 'xsk_umem_adjust_offset()', and
        use "+=" for both cases. <br>
      </blockquote>
      <p>I'll try to come up with a better name for this, I see how
        "handle_offset" could be misleading :) <br>
      </p>
      <p>In terms of the "+=", we can't do that for both. We need to use
        | for the unaligned case since we store the offset in the upper
        16-bits of the address field so that we leave the lower 48-bits
        (the original base address) untouched.<br>
      </p>
    </blockquote>
    Correction, we can do "+=". With that, the lower 48-bits will still
    remain untouched though, so we still have the original address :) <br>
    <blockquote type="cite"
      cite="mid:096504af-35a9-7604-7c06-e500224256ea@intel.com">
      <p> </p>
      <p>&lt;...&gt;<br>
      </p>
      <blockquote type="cite"
        cite="mid:E0F8C5B9-A4CD-47CD-8C72-F840161D178E@gmail.com">
        <blockquote type="cite"> <br>
               if (!PAGE_ALIGNED(addr)) { <br>
          @@ -331,9 +335,11 @@ static int xdp_umem_reg(struct xdp_umem
          *umem, struct xdp_umem_reg *mr) <br>
               if (chunks == 0) <br>
                   return -EINVAL; <br>
          <br>
          -    chunks_per_page = PAGE_SIZE / chunk_size; <br>
          -    if (chunks &lt; chunks_per_page || chunks %
          chunks_per_page) <br>
          -        return -EINVAL; <br>
          +    if (!unaligned_chunks) { <br>
          +        chunks_per_page = PAGE_SIZE / chunk_size; <br>
          +        if (chunks &lt; chunks_per_page || chunks %
          chunks_per_page) <br>
          +            return -EINVAL; <br>
          +    } <br>
          <br>
               headroom = ALIGN(headroom, 64); <br>
          <br>
          @@ -342,13 +348,15 @@ static int xdp_umem_reg(struct xdp_umem
          *umem, struct xdp_umem_reg *mr) <br>
                   return -EINVAL; <br>
          <br>
               umem-&gt;address = (unsigned long)addr; <br>
          -    umem-&gt;chunk_mask = ~((u64)chunk_size - 1); <br>
          +    umem-&gt;chunk_mask = unaligned_chunks ?
          XSK_UNALIGNED_BUF_ADDR_MASK <br>
          +                        : ~((u64)chunk_size - 1); <br>
        </blockquote>
        <br>
        The handle needs to be cleaned (reset to base address) when
        removed <br>
        from the fill queue or recycle stack.  This will not provide the
        correct <br>
        semantics for unaligned mode. <br>
      </blockquote>
      <p>When we use aligned mode, the chunk mask is ~0x07FF which will
        remove the low 11-bits in order to get us back to the original
        base address.</p>
      <p>In unaligned mode, the chunk mask is ~0xFFFF00....00 which will
        remove the upper 16-bits. This will remove the offset from the
        address field and, since we have not directly modified the low
        48-bits (original base address), leave us with the original base
        address.</p>
      <p>Cleaning the handle will therefore work as it does now, using
        the appropriate mask based on which mode we are using. 
        <style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:0cm;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{font-family:"Calibri",sans-serif;}
.MsoPapDefault
	{margin-bottom:8.0pt;
	line-height:107%;}
 /* Page Definitions */
 @page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
-->
</style></p>
      &lt;...&gt;<br>
      <br>
      <blockquote type="cite"
        cite="mid:E0F8C5B9-A4CD-47CD-8C72-F840161D178E@gmail.com">
        <blockquote type="cite"> <br>
                   if (xskq_produce_addr_lazy(umem-&gt;cq,
          desc-&gt;addr)) <br>
          @@ -243,7 +269,7 @@ static int xsk_generic_xmit(struct sock
          *sk, struct msghdr *m, <br>
               if (xs-&gt;queue_id &gt;=
          xs-&gt;dev-&gt;real_num_tx_queues) <br>
                   goto out; <br>
          <br>
          -    while (xskq_peek_desc(xs-&gt;tx, &amp;desc)) { <br>
          +    while (xskq_peek_desc(xs-&gt;tx, &amp;desc, xs-&gt;umem))
          { <br>
                   char *buffer; <br>
                   u64 addr; <br>
                   u32 len; <br>
          @@ -262,6 +288,10 @@ static int xsk_generic_xmit(struct sock
          *sk, struct msghdr *m, <br>
          <br>
                   skb_put(skb, len); <br>
                   addr = desc.addr; <br>
          +        if (xs-&gt;umem-&gt;flags &amp;
          XDP_UMEM_UNALIGNED_CHUNKS) <br>
          +            addr = (addr &amp; XSK_UNALIGNED_BUF_ADDR_MASK) |
          <br>
          +                (addr &gt;&gt;
          XSK_UNALIGNED_BUF_OFFSET_SHIFT); <br>
        </blockquote>
        <br>
        This doesn't look right to me.  Shouldn't it be "(addr &amp;
        mask) + (addr &gt;&gt; shift)"? <br>
        I'd also prefer to see this type of logic in an inline/macro <br>
      </blockquote>
      <p>Will fix in the v4, thanks! <br>
      </p>
      <p>I'll look to move this to an inline function as well.<br>
      </p>
      &lt;...&gt;<br>
    </blockquote>
  </body>
</html>

--------------C78002754FFA9C87167D1E82--

--===============0750708410181803475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0750708410181803475==--
