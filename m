Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D05D6754ED
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 19:00:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 512988644F;
	Thu, 25 Jul 2019 17:00:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5_i2wUDcIxsp; Thu, 25 Jul 2019 17:00:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 59E528638F;
	Thu, 25 Jul 2019 17:00:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 818101BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:00:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7D37622253
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:00:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t0eA6Rtw0DsJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 17:00:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 5813F2044A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:00:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 10:00:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="345497251"
Received: from klaatz-mobl1.ger.corp.intel.com (HELO [10.237.221.70])
 ([10.237.221.70])
 by orsmga005.jf.intel.com with ESMTP; 25 Jul 2019 10:00:15 -0700
To: Maxim Mikityanskiy <maximmi@mellanox.com>
References: <20190716030637.5634-1-kevin.laatz@intel.com>
 <20190724051043.14348-1-kevin.laatz@intel.com>
 <20190724051043.14348-4-kevin.laatz@intel.com>
 <3af74e26-8899-cf1e-6fd4-5ea0bd349fc3@mellanox.com>
From: "Laatz, Kevin" <kevin.laatz@intel.com>
Message-ID: <02909a39-efd8-052e-8128-4a6e5a142f99@intel.com>
Date: Thu, 25 Jul 2019 18:00:14 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <3af74e26-8899-cf1e-6fd4-5ea0bd349fc3@mellanox.com>
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
Cc: "jakub.kicinski@netronome.com" <jakub.kicinski@netronome.com>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loftus,
 Ciara" <ciara.loftus@intel.com>, "ast@kernel.org" <ast@kernel.org>,
 "stephen@networkplumber.org" <stephen@networkplumber.org>,
 Saeed Mahameed <saeedm@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "Richardson,
 Bruce" <bruce.richardson@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, "Topel,
 Bjorn" <bjorn.topel@intel.com>, "Karlsson, Magnus" <magnus.karlsson@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 25/07/2019 10:27, Maxim Mikityanskiy wrote:
> On 2019-07-24 08:10, Kevin Laatz wrote:
>> Currently, addresses are chunk size aligned. This means, we are very
>> restricted in terms of where we can place chunk within the umem. For
>> example, if we have a chunk size of 2k, then our chunks can only be placed
>> at 0,2k,4k,6k,8k... and so on (ie. every 2k starting from 0).
>>
>> This patch introduces the ability to use unaligned chunks. With these
>> changes, we are no longer bound to having to place chunks at a 2k (or
>> whatever your chunk size is) interval. Since we are no longer dealing with
>> aligned chunks, they can now cross page boundaries. Checks for page
>> contiguity have been added in order to keep track of which pages are
>> followed by a physically contiguous page.
>>
>> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
>> Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
>> Signed-off-by: Bruce Richardson <bruce.richardson@intel.com>
>>
>> ---
>> v2:
>>     - Add checks for the flags coming from userspace
>>     - Fix how we get chunk_size in xsk_diag.c
>>     - Add defines for masking the new descriptor format
>>     - Modified the rx functions to use new descriptor format
>>     - Modified the tx functions to use new descriptor format
>>
>> v3:
>>     - Add helper function to do address/offset masking/addition
>> ---
>>    include/net/xdp_sock.h      | 17 ++++++++
>>    include/uapi/linux/if_xdp.h |  9 ++++
>>    net/xdp/xdp_umem.c          | 18 +++++---
>>    net/xdp/xsk.c               | 86 ++++++++++++++++++++++++++++++-------
>>    net/xdp/xsk_diag.c          |  2 +-
>>    net/xdp/xsk_queue.h         | 68 +++++++++++++++++++++++++----
>>    6 files changed, 170 insertions(+), 30 deletions(-)
>>
> <...>
>
>> +/* If a buffer crosses a page boundary, we need to do 2 memcpy's, one for
>> + * each page. This is only required in copy mode.
>> + */
>> +static void __xsk_rcv_memcpy(struct xdp_umem *umem, u64 addr, void *from_buf,
>> +			     u32 len, u32 metalen)
>> +{
>> +	void *to_buf = xdp_umem_get_data(umem, addr);
>> +
>> +	if (xskq_crosses_non_contig_pg(umem, addr, len + metalen)) {
>> +		void *next_pg_addr = umem->pages[(addr >> PAGE_SHIFT) + 1].addr;
>> +		u64 page_start = addr & (PAGE_SIZE - 1);
>> +		u64 first_len = PAGE_SIZE - (addr - page_start);
> Let addr = 0x12345, PAGE_SIZE = 0x1000, len = 0x1000. Your calculations
> lead to page_start = 0x345, first_len = 0x1000 - 0x12000, which is
> negative. I think page_start is calculated incorrectly (is ~ missing?).

Correct, the ~ is missing in the page_start calculation. Nice spot, thanks!

>
>> +
>> +		memcpy(to_buf, from_buf, first_len + metalen);
>> +		memcpy(next_pg_addr, from_buf + first_len, len - first_len);
>> +
>> +		return;
>> +	}
>> +
>> +	memcpy(to_buf, from_buf, len + metalen);
>> +}
>> +
> <...>
>
>> +static inline bool xskq_is_valid_addr_unaligned(struct xsk_queue *q, u64 addr,
>> +						u64 length,
>> +						struct xdp_umem *umem)
>> +{
>> +	addr += addr >> XSK_UNALIGNED_BUF_OFFSET_SHIFT;
>> +	addr &= XSK_UNALIGNED_BUF_ADDR_MASK;
>> +	if (addr >= q->size ||
> Addresses like 0x00aaffffffffffff will pass the validation (0xaa +
> 0xffffffffffff will overflow mod 2^48 and become a small number),
> whereas such addresses don't look valid for me.

If you are referring to the addr >= q->size check... that check was 
already in xskq_is_valid_addr (which I based this function on). If this 
doesn't make sense, then it should be removed/fixed for both.

>
>> +	    xskq_crosses_non_contig_pg(umem, addr, length)) {
> If the region is not contiguous, we cant RX into it - that's clear.
> However, how can the userspace determine whether these two pages of UMEM
> are mapped contiguously in the DMA space? Are we going to silently drop
> descriptors to non-contiguous frames and leak them? Please explain how
> to use it correctly from the application side.

Correct, if it is not contiguous then we cannot Rx into it.

Userspace apps should be aware of the page contiguity when using 
zero-copy and if not, then should not be using the unaligned mode. 
Existing frameworks that have their own memory management subsystem, 
such as DPDK, are aware of page contiguity and manage this themselves 
while simpler apps that don't have this kind of visibility can use 
hugepages, as is shown in the xdpsock sample changes in this set.



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
