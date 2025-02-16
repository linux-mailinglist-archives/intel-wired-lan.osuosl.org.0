Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C452A37422
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Feb 2025 13:36:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E1B2983F5A;
	Sun, 16 Feb 2025 12:36:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qpOwDCQxh_GU; Sun, 16 Feb 2025 12:36:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EFB5983F03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739709391;
	bh=sDBfuwN7zF5bfcepsK7mvv2IbRXE9jZFhB763pxzsqs=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dRT27nY9Lvl7Sd83/Ha9vqLD8DrLzAYSgzoVZgQzE6MccSRm/rS1IC2q7QgR1a7IY
	 sPEJhq4beU+oPhNGXH3wU4cbx58tcB3esQxI63EQVcPu6h6X5G+Ys6gDkjmqPy9SBf
	 sUsoWi07AzShBi2EW6DmAAy5zGd4DI8Jszm0o7NCYpkT5QQ6znwV2jsl+KPhDJJmCC
	 Q4Jg1mMM5rVZaxyFOkdbJ7LexeFGPD1XloeAcJLEVGqe0NyXzs7jbzm4BQUvmgZFvl
	 MDFmLzLMLIZTTRNwAnApUxx+Gvj1pn1PXMS51UX9hfjQzeq9Zg2zc0sqWFuEktSUzL
	 5cL0ha9sua8lA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EFB5983F03;
	Sun, 16 Feb 2025 12:36:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7733CC8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Feb 2025 12:36:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5C34860A6A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Feb 2025 12:36:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OhX2axKZnazp for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Feb 2025 12:36:28 +0000 (UTC)
X-Greylist: delayed 10930 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 16 Feb 2025 12:36:27 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9C85B60B1D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C85B60B1D
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=95.215.58.173;
 helo=out-173.mta1.migadu.com; envelope-from=yanjun.zhu@linux.dev;
 receiver=<UNKNOWN> 
Received: from out-173.mta1.migadu.com (out-173.mta1.migadu.com
 [95.215.58.173])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9C85B60B1D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Feb 2025 12:36:26 +0000 (UTC)
Message-ID: <6775786f-ee86-4990-8db8-ea95d4313973@linux.dev>
Date: Sun, 16 Feb 2025 13:36:17 +0100
MIME-Version: 1.0
To: Leon Romanovsky <leon@kernel.org>
Cc: Steffen Klassert <steffen.klassert@secunet.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Ayush Sawal <ayush.sawal@chelsio.com>,
 Bharat Bhushan <bbhushan2@marvell.com>, Eric Dumazet <edumazet@google.com>,
 Geetha sowjanya <gakula@marvell.com>, hariprasad <hkelam@marvell.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Jay Vosburgh <jv@jvosburgh.net>,
 Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
 linux-rdma@vger.kernel.org, Louis Peens <louis.peens@corigine.com>,
 netdev@vger.kernel.org, oss-drivers@corigine.com,
 Paolo Abeni <pabeni@redhat.com>, Potnuri Bharat Teja <bharat@chelsio.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Subbaraya Sundeep <sbhatta@marvell.com>,
 Sunil Goutham <sgoutham@marvell.com>, Tariq Toukan <tariqt@nvidia.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Ilia Lin <ilia.lin@kernel.org>
References: <cover.1738778580.git.leon@kernel.org>
 <d2aa8f840b0c81e33239e2a4b126730ae40864f1.1738778580.git.leon@kernel.org>
 <647895d9-e8d1-4921-b5ba-b38b2176604e@linux.dev>
 <20250216110711.GU17863@unreal>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Zhu Yanjun <yanjun.zhu@linux.dev>
In-Reply-To: <20250216110711.GU17863@unreal>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1739709383;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sDBfuwN7zF5bfcepsK7mvv2IbRXE9jZFhB763pxzsqs=;
 b=rbTLqm4MS/vUuGgVmIojj0rfqc5jA5Fz/SJAClsGV+8TPL+SqVsz+x5wr5PDlcP2JVzM4Q
 wMVVwSo+vYPPiqKQRDUhjJWKruqaNxTZl4p7WlIDelGyWNxg9NBpbdw41Ub3a85ElyeWOS
 eYpA3rry46FvVQ+DG3bo3huLFkWgR6c=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=rbTLqm4M
Subject: Re: [Intel-wired-lan] [PATCH ipsec-next 4/5] xfrm: provide common
 xdo_dev_offload_ok callback implementation
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


在 2025/2/16 12:07, Leon Romanovsky 写道:
> On Sun, Feb 16, 2025 at 10:33:59AM +0100, Zhu Yanjun wrote:
>> 在 2025/2/5 19:20, Leon Romanovsky 写道:
>>> From: Leon Romanovsky <leonro@nvidia.com>
>>>
>>> Almost all drivers except bond and nsim had same check if device
>>> can perform XFRM offload on that specific packet. The check was that
>>> packet doesn't have IPv4 options and IPv6 extensions.
>>>
>>> In NIC drivers, the IPv4 HELEN comparison was slightly different, but
>>> the intent was to check for the same conditions. So let's chose more
>>> strict variant as a common base.
>>>
>>> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
>>> ---
>>>    Documentation/networking/xfrm_device.rst      |  3 ++-
>>>    drivers/net/bonding/bond_main.c               | 16 +++++---------
>>>    .../net/ethernet/chelsio/cxgb4/cxgb4_main.c   | 21 -------------------
>>>    .../inline_crypto/ch_ipsec/chcr_ipsec.c       | 16 --------------
>>>    .../net/ethernet/intel/ixgbe/ixgbe_ipsec.c    | 21 -------------------
>>>    drivers/net/ethernet/intel/ixgbevf/ipsec.c    | 21 -------------------
>>>    .../marvell/octeontx2/nic/cn10k_ipsec.c       | 15 -------------
>>>    .../mellanox/mlx5/core/en_accel/ipsec.c       | 16 --------------
>>>    .../net/ethernet/netronome/nfp/crypto/ipsec.c | 11 ----------
>>>    drivers/net/netdevsim/ipsec.c                 | 11 ----------
>>>    drivers/net/netdevsim/netdevsim.h             |  1 -
>>>    net/xfrm/xfrm_device.c                        | 15 +++++++++++++
>>>    12 files changed, 22 insertions(+), 145 deletions(-)
>>>
>>> diff --git a/Documentation/networking/xfrm_device.rst b/Documentation/networking/xfrm_device.rst
>>> index 66f6e9a9b59a..39bb98939d1f 100644
>>> --- a/Documentation/networking/xfrm_device.rst
>>> +++ b/Documentation/networking/xfrm_device.rst
>>> @@ -126,7 +126,8 @@ been setup for offload, it first calls into xdo_dev_offload_ok() with
>>>    the skb and the intended offload state to ask the driver if the offload
>>>    will serviceable.  This can check the packet information to be sure the
>>>    offload can be supported (e.g. IPv4 or IPv6, no IPv4 options, etc) and
>>> -return true of false to signify its support.
>>> +return true of false to signify its support. In case driver doesn't implement
>> In this commit, remove the functions cxgb4_ipsec_offload_ok,
>> ch_ipsec_offload_ok, ixgbe_ipsec_offload_ok, ixgbevf_ipsec_offload_ok,
>> cn10k_ipsec_offload_ok, mlx5e_ipsec_offload_ok, nfp_net_ipsec_offload_ok and
>> nsim_ipsec_offload_ok, use the function xfrm_dev_offload_ok to do the same
>> work.
>>
>> But in the file xfrm_device.rst, "return true or false to signify its
>> support"?
> This sentence continued in the xfrm_device.rst: "...  In case driver doesn't implement
> this callback, the stack provides reasonable defaults."

Got it.

I mean "... and return true of false to signify its support..."

                                           ^^

should be "... and return true or false to signify its support..."

^_^

Zhu Yanjun

>
>> of --> should be "or"
>>
>> Thanks a lot.
>> Reviewed-by: Zhu Yanjun <yanjun.zhu@linux.dev>
> Thanks
>
>> Zhu Yanjun
>>
>>> +this callback, the stack provides reasonable defaults.
>>>    Crypto offload mode:
>>>    When ready to send, the driver needs to inspect the Tx packet for the
>>> diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
>>> index e45bba240cbc..bfb55c23380b 100644
>>> --- a/drivers/net/bonding/bond_main.c
>>> +++ b/drivers/net/bonding/bond_main.c
>>> @@ -676,22 +676,16 @@ static void bond_ipsec_free_sa(struct xfrm_state *xs)
>>>    static bool bond_ipsec_offload_ok(struct sk_buff *skb, struct xfrm_state *xs)

-- 
Best Regards,
Yanjun.Zhu

