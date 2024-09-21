Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BBA97DF1A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Sep 2024 23:37:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6752605C0;
	Sat, 21 Sep 2024 21:37:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yZAtWTRyeioq; Sat, 21 Sep 2024 21:37:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BCA36066C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726954627;
	bh=lsAVVMXBKcU2p17etQiow5lg6LE3Y2PDSMDNuUA+QYA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QcvHDw2L13C4NzU1CDFSGPrmEW0m7tHr8/FVkH6s2BuSsxI0SkzjxXSCIWVmocqTR
	 zF7GowfHZggEVUWSi/S3u98CLPIy9z/ykwfQraqu9hpNV+jsFdFtOpGRw1efAacD0c
	 b4MvsA9aENZdN2mgwWmSFj+HaLfLAheVOjZKNPR5M9zNq4WYMhsdZ1slGcX8d3kmNL
	 1vo30TAHSOORIIfrxh9CGiGG/hRwPvMKMWmw54FnUYkexOQ1cnmJUyZHJSK4GX0kk6
	 0FDDVXKJLdh7GAF64eSbiQtSeHLdFKzxj3DYeBGJZL93bvqWb8S0IZZ5SHuNcMuZt7
	 WrmDu1M7rDsDw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BCA36066C;
	Sat, 21 Sep 2024 21:37:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 125E61BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Sep 2024 21:37:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F1711406EB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Sep 2024 21:37:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id byKKSwV5-6ML for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Sep 2024 21:37:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=hawk@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 916A9406E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 916A9406E9
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 916A9406E9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Sep 2024 21:37:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id A2223A4006E;
 Sat, 21 Sep 2024 21:36:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BBDBC4CEC2;
 Sat, 21 Sep 2024 21:36:56 +0000 (UTC)
Message-ID: <09657be6-b5e2-4b5a-96b6-d34174aadd0a@kernel.org>
Date: Sat, 21 Sep 2024 23:36:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@kernel.org>
References: <cover.1726935917.git.lorenzo@kernel.org>
 <1f53cd74-6c1e-4a1c-838b-4acc8c5e22c1@intel.com>
Content-Language: en-US
From: Jesper Dangaard Brouer <hawk@kernel.org>
In-Reply-To: <1f53cd74-6c1e-4a1c-838b-4acc8c5e22c1@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1726954621;
 bh=Cz/rB1tfpIcjVKvJ0kABbjer56WE7Iki57K7hUdDn94=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=Q6bE5Ggwl5v3ct+ug5zFyt/0bzFy5s1cFkfCfT3WROGt/FJcwaBFONP2PxVDLvegm
 tTdQyN/Fl4adzefPlGHX0gba5NGCzEiCqty+bSAWuW7R6z45HwJGscHsrZT6Mf9+SC
 TtYCwozu0Bs4PcjFQnrCadbOUyz8VsXOVRvaqNlnDFrpv9LnFPmtAZ1umWrJQUpKam
 gVoCxKZ/1kw5CV+b4WlWlmqua60oY4mGlHTPh+iyzD/KM4f17pPzVhV1CbGJysjAVM
 EuaVu0ydjIVomSR3Zgj454AFffuqbqKXQwpdQ1VFQOsS4KzQ4m1qYMUqSDL2M9oZFo
 /Y6wFjLp+HIog==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Q6bE5Ggw
Subject: Re: [Intel-wired-lan] [RFC bpf-next 0/4] Add XDP rx hw hints
 support performing XDP_REDIRECT
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
Cc: toke@toke.dk, mst@redhat.com, jasowang@redhat.com,
 alexandre.torgue@foss.st.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 sdf@google.com, daniel@iogearbox.net, kernel-team <kernel-team@cloudflare.com>,
 przemyslaw.kitszel@intel.com, john.fastabend@gmail.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 Yan Zhai <yan@cloudflare.com>, ast@kernel.org, netdev@vger.kernel.org,
 tariqt@nvidia.com, mcoquelin.stm32@gmail.com, bpf@vger.kernel.org,
 saeedm@nvidia.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 21/09/2024 22.17, Alexander Lobakin wrote:
> From: Lorenzo Bianconi <lorenzo@kernel.org>
> Date: Sat, 21 Sep 2024 18:52:56 +0200
> 
>> This series introduces the xdp_rx_meta struct in the xdp_buff/xdp_frame
> 
> &xdp_buff is on the stack.
> &xdp_frame consumes headroom.
> 
> IOW they're size-sensitive and putting metadata directly there might
> play bad; if not now, then later.
> 
> Our idea (me + Toke) was as follows:
> 
> - new BPF kfunc to build generic meta. If called, the driver builds a
>    generic meta with hash, csum etc., in the data_meta area.

I do agree that it should be the XDP prog (via a new BPF kfunc) that
decide if xdp_frame should be updated to contain a generic meta struct.
*BUT* I think we should use the xdp_frame area, and not the
xdp->data_meta area.

A details is that I think this kfunc should write data directly into
xdp_frame area, even then we are only operating on the xdp_buff, as we
do have access to the area xdp_frame will be created in.


When using data_meta area, then netstack encap/decap needs to move the
data_meta area (extra cycles).  The xdp_frame area (live in top) don't
have this issue.

It is easier to allow xdp_frame area to survive longer together with the
SKB. Today we "release" this xdp_frame area to be used by SKB for extra
headroom (see xdp_scrub_frame).  I can imagine that we can move SKB
fields to this area, and reduce the size of the SKB alloc. (This then
becomes the mini-SKB we discussed a couple of years ago).


>    Yes, this also consumes headroom, but only when the corresponding func
>    is called. Introducing new fields like you're doing will consume it
>    unconditionally;

We agree on the kfunc call marks area as consumed/in-use.  We can extend
xdp_frame statically like Lorenzo does (with struct xdp_rx_meta), but
xdp_frame->flags can be used for marking this area as used or not.


> - when &xdp_frame gets converted to sk_buff, the function checks whether
>    data_meta contains a generic structure filled with hints.
> 

Agree, but take data from xdp_frame->xdp_rx_meta.

When XDP returns XDP_PASS, then I also want to see this data applied to
the SKB. In patchset[1] Yan called this xdp_frame_fixup_skb_offloading()
and xdp_buff_fixup_skb_offloading(). (Perhaps "fixup" isn't the right
term, "apply" is perhaps better).  Having this generic-name allow us to
extend with newer offloads, and eventually move members out of SKB.

We called it "fixup", because our use-case is that our XDP load-balancer
(Unimog) XDP_TX bounce packets with in GRE header encap, and on the
receiving NIC (due to encap) we lost the HW hash/csum, which we want to
transfer from the original NIC, decap in XDP and apply the original HW
hash/csum via this "fixup" call.

--Jesper

[1] https://lore.kernel.org/all/cover.1718919473.git.yan@cloudflare.com/

> We also thought about &skb_shared_info, but it's also size-sensitive as
> it consumes tailroom.
> 
>> one as a container to store the already supported xdp rx hw hints (rx_hash
>> and rx_vlan, rx_timestamp will be stored in skb_shared_info area) when the
>> eBPF program running on the nic performs XDP_REDIRECT. Doing so, we are able
>> to set the skb metadata converting the xdp_buff/xdp_frame to a skb.
> 
> Thanks,
> Olek
