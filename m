Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBB4B0E9D0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 06:49:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5D8180AA1;
	Wed, 23 Jul 2025 04:49:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cC1pSPCW2UDs; Wed, 23 Jul 2025 04:49:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6AEAC80BA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753246187;
	bh=svICcUFp7Foycwjpr50igsZko0HoBHtpGo+taHbxAXE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g70sf2zxlNnOxD4+s289BpO8Xn7Ow3G51yLir701yqEE3W/S61gE75cT8mE9ovL++
	 cfr2d0XYLgQquVvHCZ0D5JFRx3Vd0y10WE3iU1WFyXuTNgPXQYij5fIcc7tLPN9vAW
	 vrrVSuWVNmU+RMT4Rd9RWkITZ6Q2mttN4XPC21aZTtIUBLPkuMEWm/gYzxQ0tcQAoj
	 ur6/f0cbg1b5V7gRfoHrwk+Dms7+KDauQCN0MRZ5FHn098mfmFcdtPzLGMg8jZpMvH
	 szb1c8WRKO7iUl3F6JU9JmYvYhDVAFlTijvwGrfvNfhz64Nn9e9TiurRo2kPHeEa11
	 L3iLfg8dv8VGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6AEAC80BA3;
	Wed, 23 Jul 2025 04:49:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C96A3E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 04:49:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AE9B040C93
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 04:49:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ir_foIL1rNLa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 04:49:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0055141172
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0055141172
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0055141172
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 04:49:40 +0000 (UTC)
X-AuditID: a67dfc5b-681ff7000002311f-ec-688069e2743d
Date: Wed, 23 Jul 2025 13:49:33 +0900
From: Byungchul Park <byungchul@sk.com>
To: willy@infradead.org, netdev@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 kernel_team@skhynix.com, almasrymina@google.com,
 ilias.apalodimas@linaro.org, harry.yoo@oracle.com,
 akpm@linux-foundation.org, andrew+netdev@lunn.ch,
 asml.silence@gmail.com, toke@redhat.com, david@redhat.com,
 Liam.Howlett@oracle.com, vbabka@suse.cz, rppt@kernel.org,
 surenb@google.com, mhocko@suse.com, linux-rdma@vger.kernel.org,
 bpf@vger.kernel.org, vishal.moola@gmail.com, hannes@cmpxchg.org,
 ziy@nvidia.com, jackmanb@google.com, wei.fang@nxp.com,
 shenwei.wang@nxp.com, xiaoning.wang@nxp.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 sgoutham@marvell.com, gakula@marvell.com, sbhatta@marvell.com,
 hkelam@marvell.com, bbhushan2@marvell.com, tariqt@nvidia.com,
 ast@kernel.org, daniel@iogearbox.net, hawk@kernel.org,
 john.fastabend@gmail.com, sdf@fomichev.me, saeedm@nvidia.com,
 leon@kernel.org, mbloch@nvidia.com, danishanwar@ti.com,
 rogerq@kernel.org, nbd@nbd.name, lorenzo@kernel.org,
 ryder.lee@mediatek.com, shayne.chen@mediatek.com,
 sean.wang@mediatek.com, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com,
 aleksander.lobakin@intel.com, horms@kernel.org, m-malladi@ti.com,
 krzysztof.kozlowski@linaro.org, matthias.schiffer@ew.tq-group.com,
 robh@kernel.org, imx@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 linux-arm-kernel@lists.infradead.org,
 linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org
Message-ID: <20250723044933.GA8691@system.software.com>
References: <20250721021835.63939-1-byungchul@sk.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250721021835.63939-1-byungchul@sk.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfUxTZxTG8973frWjyV0n7p2ELOlmlpEA6tSdkfkRN+Pd4jIjicnc4mzG
 zdoI1RRtgWSjIszZrUjAZbYrGU4sn4opAzqsbBaCnZrxJVj5KA42glpErVQqrqzXzMz/njzn
 ye85Jzk8Vleyy3i9Yb9kNGizNaySVs4k/JQ6qbfoVnh3g7OpkYW+8AkGGubzoOaGh4H+OgLn
 eucpcNa3IngQHeHAfWQUQ7jrIgsnT0QwRM/aaHD2FNMw1/QIw9/dExz4ff/Q0OD+AMZdUzR4
 D7dh6JxbDhNH/SzYihcw2IMlLCwOLzBwPnqHgyJPLQXnb7dw0NtaysCxR6cwtFluxLsmhxgY
 aHeyMHCoD0GwcZGBKV+8MFQ7ykFpgwOB79c6FoqK34BQywMO7n7XhWG8dCPEjpugu2opRC6H
 EIycGqRg0evh4I/gGQa6mtoouPpnFEPk20oWrDNHEQza2ym4UnmWgerLV6n4HpkwtPiYgor+
 KhYmi8cR9HdO0PDDwVIETR0BBu554ycvzDvZjZvEztAsFj1j1Uj8ue46JU6XxSgx0HGJEn9x
 jHFilfuA2FybIp703qREa6Afi+76I6zovl/OiaNDXlb0H1+gxebqQnG62Y62Je9Uvp0lZetN
 kjF9/W6lzve9ndpXti4veK0CW1BNuhUpeCKsJm1fVaCneup0JS1rWlhOHn5dwciaFV4jgUAU
 WxHPLxHSyVD5R1ak5LFwMIFMh2xYzrwgbCYufzsrZ1TCm8QSTpZttbCGhG55nmBUwvPkd/tf
 T/BYSCGB2E1KjmMhidTEeNlWCGvJRPw/ZJ0ovEJ+a71IyVVEmFKQMxdm/1vzJXKhNkCXIcHx
 DNbxDNbxP7YK4Xqk1htMOVp99uo0Xb5Bn5f22d4cN4o/reuLxx970P3eTB8SeKRJUFlaCnVq
 RmvKzc/xIcJjzRJV5NyXOrUqS5tfIBn3fmo8kC3l+lAST2teVK2KmLPUwufa/dIeSdonGZ9O
 KV6xzIKoolt7fFvL3hteqcw4vYGkHrs3IjWGt3U0JJpnMt9PchUGDyfv2pGyvUSlNy/tDpk+
 2ZThV8x5pkXbZqvd9m7XW3fuftg6vMJV9GOB25oa3rJr+3ODW8fKC2LmxENrHloMO+Gdktdd
 PePeb3ZkZM2aS7g0tGVV5OWeAYNkeLUv47qGztVpV6ZgY672X7cHPHiwAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0xTdxTO7/7ui4Yb7yrDG3FL1sUZSZQtvk6iGybGcLPExYUZnfFBgze2
 A6procKSYdGazWZUlI3ZUhJQ5K0lRaBCRVeYgJqpFLAqFq0bAVfng4KWsmJrssz/vnPO9zh/
 fCyWh6mFrFqTK2k1ymwFLSNlX6w9vMyvNqg+vl7yAdjsTTTcmqyioPFVPtQ+cFIwUC9A581X
 BNga2hAEQ/cYcBwdwTDZ00vD6appDKHmYhJsN4wkTNlnMPx1xc9An/tfEhodm2C0ZowE1w/t
 GLqnFoP/WB8NxcYwBovvCA1zd8MUXAz9w8AhZx0B3RX90fHvVgZutpkp+HnmDIZ2w4No4KNh
 CjwdNho8h28h8DXNUTDmjqYG6kYYMDdaEbgv1dNwyLgCAq1BBp790oNh1LweIif1cKUyEaav
 BRDcOzNEwJzLycAfvnMU9NjbCRh8GMIw/VMFDaYnxxAMWToIuF7RTEH1tUEi+kc6DM/NElA6
 UEnDI+MogoFuPwnlRWYE9i4vBc9dRnL9BrE78BSLzvvVSDxff4cQx0sihOjtukqIF6z3GbHS
 kSe21CWLp10ThGjyDmDR0XCUFh0vTjDiyLCLFvtOhkmxpfqgON5iQZvf3y5bt0fKVuslbcpn
 GTKV+1cLsb/k03zf7VJsQLUpJhTHCvxKYexsBRnDJL9YePljKRXDNL9E8HpD2IRYNoFPEYZP
 fG1CMhbzRfHCeKAYxzjz+Y1CTV8HHeNw/BrBMPlebC3nVwmBx843Nhz/jtBv+fONPeaTBW9k
 gojRMZ8k1EbY2DqOXy34o52I4Xf5D4XLbb1ECeKsb6mtb6mt/6srEW5ACWqNPkepzl61XJel
 KtCo85dn7stxoGgla76fPe5EQU+aG/EsUsRzhtaDKjml1OsKctxIYLEigZvuLFTJuT3Kgu8k
 7b7d2rxsSedGSSypWMB9vlXKkPN7lblSliTtl7T/XQk2bqEBpS7b9HLBXfztog1lEfNmQ5DD
 X5Vn2TqbS6fsHbNLf0trMj7ZSeWdO1B28XjeN5nBVI/nam2z/EhNfvnMjR31iUVdZ8eTuLKq
 das1232ndqf9vmhbYa4ulO5cUljOFMxLjcDjXRnz5Dk7Mh1beqvCienJXw7F09sI/dBlV9nE
 R/2DClKnUn6SjLU65WsqBJKsjgMAAA==
X-CFilter-Loop: Reflected
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v12 00/12] Split netmem from
 struct page
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

On Mon, Jul 21, 2025 at 11:18:23AM +0900, Byungchul Park wrote:
> Hi all,
> 
> The MM subsystem is trying to reduce struct page to a single pointer.
> See the following link for your information:
> 
>    https://kernelnewbies.org/MatthewWilcox/Memdescs/Path
> 
> The first step towards that is splitting struct page by its individual
> users, as has already been done with folio and slab.  This patchset does
> that for page pool.
> 
> Matthew Wilcox tried and stopped the same work, you can see in:
> 
>    https://lore.kernel.org/linux-mm/20230111042214.907030-1-willy@infradead.org/
> 
> I focused on removing the page pool members in struct page this time,
> not moving the allocation code of page pool from net to mm.  It can be
> done later if needed.
> 
> The final patch that removes the page pool fields will be posted once
> all the conversions are completed.
> 
> 	Byungchul
> ---
> Changes from v11:
> 	1. Rebase on net-next/main as of Jul 21.
> 	2. Change page_pool_page_is_pp() to check for const type of
> 	   page.  For now that it's called along with every
> 	   pp_page_to_nmdesc() call as Pavel suggested,
> 	   page_pool_page_is_pp() should also cover const type of page.

I believe the curretn version is good enough.

	Byungchul

> Changes from v10:
> 	1. Introduce __netmem_to_nmdesc() and use it in
> 	   __netmem_get_pp(). (feedbacked by Mina)
> 	2. Fix a bug that fails on casting 'const page -> const
> 	   netmem_desc', by using macros and _Generic. (feedbacked by
> 	   test robot)
> 	3. Add comment on pp_page_to_nmdesc() to ask for more attention
> 	   before using the helper. (feedbacked by Mina)
> 
> Changes from v9:
> 	1. Remove the patch 'page_pool: access ->pp_magic through
> 	   netmem_desc in page_pool_page_is_pp()' and decide to wait for
> 	   Pavel's work of PageNetpp() to identify page type for page
> 	   pool, that doesn't need to access ->pp_magic.
> 	2. Rename page_to_nmdesc() to pp_page_to_nmdesc() and add
> 	   DEBUG_NET_WARN_ON_ONCE(!page_pool_page_is_pp(page)) in it,
> 	   just in case. (feedbacked by Pavel)
> 	3. Apply just simple casting from page to netmem_desc for
> 	   accessing ->pp and ->pp_ref_count, instead of full converting
> 	   page to netmem_ref for network drivers e.g. mlx4, netdevsim,
> 	   and mt76.
> 	4. Expand the support for drivers to access ->pp and
> 	   ->pp_ref_count to fec, octeontx2-pf, iavf, idpf, mlx5, ti,
> 	   and xdp.
> 	5. Squash each helper with its first user. (feedbacked by Mina)
> 
> Changes from v8:
> 	1. Rebase on net-next/main as of Jul 10.
> 	2. Exclude non-controversial patches that have already been
> 	   merged to net-next.
> 	3. Re-add the patches that focus on removing accessing the page
> 	   pool fields in struct page.
> 	4. Add utility APIs e.g. casting, to use struct netmem_desc as
> 	   descriptor, to support __netmem_get_pp() that has started to
> 	   be used again e.g. by libeth.
> 
> Changes from v7 (no actual updates):
> 	1. Exclude "netmem: introduce struct netmem_desc mirroring
> 	   struct page" that might be controversial.
> 	2. Exclude "netmem: introduce a netmem API,
> 	   virt_to_head_netmem()" since there are no users.
> 
> Changes from v6 (no actual updates):
> 	1. Rebase on net-next/main as of Jun 25.
> 	2. Supplement a comment describing struct net_iov.
> 	3. Exclude a controversial patch, "page_pool: access ->pp_magic
> 	   through struct netmem_desc in page_pool_page_is_pp()".
> 	4. Exclude "netmem: remove __netmem_get_pp()" since the API
> 	   started to be used again by libeth.
> 
> Changes from v5 (no actual updates):
> 	1. Rebase on net-next/main as of Jun 20.
> 	2. Add given 'Reviewed-by's and 'Acked-by's, thanks to all.
> 	3. Add missing cc's.
> 
> Changes from v4:
> 	1. Add given 'Reviewed-by's, thanks to all.
> 	2. Exclude potentially controversial patches.
> 
> Changes from v3:
> 	1. Relocates ->owner and ->type of net_iov out of netmem_desc
> 	   and make them be net_iov specific.
> 	2. Remove __force when casting struct page to struct netmem_desc.
> 
> Changes from v2:
> 	1. Introduce a netmem API, virt_to_head_netmem(), and use it
> 	   when it's needed.
> 	2. Introduce struct netmem_desc as a new struct and union'ed
> 	   with the existing fields in struct net_iov.
> 	3. Make page_pool_page_is_pp() access ->pp_magic through struct
> 	   netmem_desc instead of struct page.
> 	4. Move netmem alloc APIs from include/net/netmem.h to
> 	   net/core/netmem_priv.h.
> 	5. Apply trivial feedbacks, thanks to Mina, Pavel, and Toke.
> 	6. Add given 'Reviewed-by's, thanks to Mina.
> 
> Changes from v1:
> 	1. Rebase on net-next's main as of May 26.
> 	2. Check checkpatch.pl, feedbacked by SJ Park.
> 	3. Add converting of page to netmem in mt76.
> 	4. Revert 'mlx5: use netmem descriptor and APIs for page pool'
> 	   since it's on-going by Tariq Toukan.  I will wait for his
> 	   work to be done.
> 	5. Revert 'page_pool: use netmem APIs to access page->pp_magic
> 	   in page_pool_page_is_pp()' since we need more discussion.
> 	6. Revert 'mm, netmem: remove the page pool members in struct
> 	   page' since there are some prerequisite works to remove the
> 	   page pool fields from struct page.  I can submit this patch
> 	   separatedly later.
> 	7. Cancel relocating a page pool member in struct page.
> 	8. Modify static assert for offests and size of struct
> 	   netmem_desc.
> 
> Changes from rfc:
> 	1. Rebase on net-next's main branch.
> 	   https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/
> 	2. Fix a build error reported by kernel test robot.
> 	   https://lore.kernel.org/all/202505100932.uzAMBW1y-lkp@intel.com/
> 	3. Add given 'Reviewed-by's, thanks to Mina and Ilias.
> 	4. Do static_assert() on the size of struct netmem_desc instead
> 	   of placing place-holder in struct page, feedbacked by
> 	   Matthew.
> 	5. Do struct_group_tagged(netmem_desc) on struct net_iov instead
> 	   of wholly renaming it to strcut netmem_desc, feedbacked by
> 	   Mina and Pavel.
> 
> Byungchul Park (12):
>   netmem: introduce struct netmem_desc mirroring struct page
>   netmem: use netmem_desc instead of page to access ->pp in
>     __netmem_get_pp()
>   netmem, mlx4: access ->pp_ref_count through netmem_desc instead of
>     page
>   netdevsim: access ->pp through netmem_desc instead of page
>   mt76: access ->pp through netmem_desc instead of page
>   net: fec: access ->pp through netmem_desc instead of page
>   octeontx2-pf: access ->pp through netmem_desc instead of page
>   iavf: access ->pp through netmem_desc instead of page
>   idpf: access ->pp through netmem_desc instead of page
>   mlx5: access ->pp through netmem_desc instead of page
>   net: ti: icssg-prueth: access ->pp through netmem_desc instead of page
>   libeth: xdp: access ->pp through netmem_desc instead of page
> 
>  drivers/net/ethernet/freescale/fec_main.c     |  10 +-
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c   |   2 +-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   |   8 +-
>  .../marvell/octeontx2/nic/otx2_txrx.c         |   2 +-
>  drivers/net/ethernet/mellanox/mlx4/en_rx.c    |   4 +-
>  .../net/ethernet/mellanox/mlx5/core/en/xdp.c  |   3 +-
>  .../net/ethernet/ti/icssg/icssg_prueth_sr1.c  |   4 +-
>  drivers/net/netdevsim/netdev.c                |   6 +-
>  drivers/net/wireless/mediatek/mt76/mt76.h     |   3 +-
>  include/linux/mm.h                            |   4 +-
>  include/net/libeth/xdp.h                      |   2 +-
>  include/net/netmem.h                          | 153 +++++++++++++++---
>  12 files changed, 161 insertions(+), 40 deletions(-)
> 
> 
> base-commit: 4701ee5044fb3992f1c910630a9673c2dc600ce5
> -- 
> 2.17.1
