Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F38BCC0DFF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Dec 2025 05:22:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 54BE540B68;
	Tue, 16 Dec 2025 04:22:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VZjA2IK083-F; Tue, 16 Dec 2025 04:22:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0372140B6D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765858965;
	bh=AsBaqeNO5R0+m2VNQipFUHB0v3D7QKy54/UqMm2LGWc=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1R9r+G6oX98kNLDwEzmXmmNzEfzYPNSM74XxNwiL0JN/p6GIRd87yMLAKCnpaW9uj
	 HmoS4UWnHapuuchG16kXYWOukS4deD3W74H9CN8ULTYTxY5716FMD+7YfkTOHj3GFm
	 CdhTxEgiBrIJLHuydR3uQt/tvPJdGapkxkQED82QNLwns6LvHOflr+BekKLn86MYBO
	 6To6odJDZyuOYlt1qPO0H7Q1uZS+P1v+Ye1QvQL6TdTXnurWh3z0wlKBzHVZaG3YS+
	 8zW6bXY+j/tih1DTgOF6nDztUg5SzX6DzemOfHKUiLno1ZPoUYZa+qDeXbkWKvFYyX
	 LnX2KuPWTVzDA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0372140B6D;
	Tue, 16 Dec 2025 04:22:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E28C3117
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Dec 2025 04:22:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C917D821FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Dec 2025 04:22:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2EYGBxlxvP4Z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Dec 2025 04:22:42 +0000 (UTC)
X-Greylist: delayed 905 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 16 Dec 2025 04:22:40 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 49739821FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 49739821FB
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
Received: from invmail4.hynix.com (exvmail4.hynix.com [166.125.252.92])
 by smtp1.osuosl.org (Postfix) with ESMTP id 49739821FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Dec 2025 04:22:39 +0000 (UTC)
X-AuditID: a67dfc5b-c45ff70000001609-a9-6940db05c48f
From: Byungchul Park <byungchul@sk.com>
To: netdev@vger.kernel.org,
	kuba@kernel.org
Cc: linux-kernel@vger.kernel.org, kernel_team@skhynix.com,
 harry.yoo@oracle.com, david@redhat.com, willy@infradead.org,
 toke@redhat.com, asml.silence@gmail.com, almasrymina@google.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
Date: Tue, 16 Dec 2025 13:07:23 +0900
Message-Id: <20251216040723.10545-1-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrHLMWRmVeSWpSXmKPExsXC9ZZnoS7rbYdMg9Z/xharf1RYLH+wg9Vi
 94UfTBZzVm1jtJhzvoXF4uv6X8wWT489Yre4v+wZi8X/W79ZLS5s62O1uLxrDpvFsQViFt9O
 v2G0uL30KpPFpcOPWCx+/5jD5iDgsWXlTSaPnbPusnss2FTqsXmFlsfiPS+ZPDat6mTzONlc
 6rFzx2cmj49Pb7F4vN93lc3j8ya5AO4oLpuU1JzMstQifbsEroxN09gKHrBXTF8zgaWB8TBb
 FyMnh4SAicS6TSfYYeyue//B4mwC6hI3bvxkBrFFBHQltnZNYe1i5OJgFmhmlrhw4SILSEJY
 wFfi2q+ZrCA2i4CqxP1lX5lAbF4BU4nZZ+5BLZCXWL3hADNIs4TAETaJuUf+MUEkJCUOrrjB
 MoGRewEjwypGocy8stzEzBwTvYzKvMwKveT83E2MwFBdVvsnegfjpwvBhxgFOBiVeHg9/ttn
 CrEmlhVX5h5ilOBgVhLh7bhhlynEm5JYWZValB9fVJqTWnyIUZqDRUmc1+hbeYqQQHpiSWp2
 ampBahFMlomDU6qB0feBfeNkwd5HaknSB48W8ByeMHfXm80X853Ntb2WS09UW1JnzMa5uGbJ
 qzl2N2fvXfZjOXvAE6OqFu67BdO1t1ur9afxr+ZluM3/jr10Q7lBm+Gh3eqhOscYEk98PbFc
 61f85TvZN5dkf2VIZT0+KXN33RbXf2H/PebyPmDz7elaGeDqMtVfR4mlOCPRUIu5qDgRAPBj
 3QhRAgAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKLMWRmVeSWpSXmKPExsXC5WfdrMt62yHTYEK/isXqHxUWyx/sYLXY
 feEHk8WcVdsYLeacb2Gx+Lr+F7PF02OP2C3uL3vGYvH/1m9Wi8NzT7JaXNjWx2pxedccNotj
 C8Qsvp1+w2hxe+lVJotLhx+xWPz+MYfNQdBjy8qbTB47Z91l91iwqdRj8wotj8V7XjJ5bFrV
 yeZxsrnUY+eOz0weH5/eYvF4v+8qm8fiFx+YPD5vkgvgieKySUnNySxLLdK3S+DK2DSNreAB
 e8X0NRNYGhgPs3UxcnJICJhIdN37D2azCahL3LjxkxnEFhHQldjaNYW1i5GLg1mgmVniwoWL
 LCAJYQFfiWu/ZrKC2CwCqhL3l31lArF5BUwlZp+5BzVUXmL1hgPMExg5FjAyrGIUycwry03M
 zDHVK87OqMzLrNBLzs/dxAgMvGW1fybuYPxy2f0QowAHoxIPr8d/+0wh1sSy4srcQ4wSHMxK
 IrwdN+wyhXhTEiurUovy44tKc1KLDzFKc7AoifN6hacmCAmkJ5akZqemFqQWwWSZODilGhhT
 dy7Oe12Sp29kNVH1nt/rptPKWpn+Kof9P9Y8rg7Ze+S/+keWxP1PlzdZCAtOEArmkA6aUyVl
 8830ZYrPxmuF3E1OLxc2Wm5b1XTB4/CkFRx/lG68u8e356tnQmEB65Rru91u7w38UHUo9sKr
 g0JyuaVJJ9bfXK/8/UFLbOWTq19/bfmROTNXiaU4I9FQi7moOBEAsyumdzgCAAA=
X-CFilter-Loop: Reflected
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: [Intel-wired-lan] [PATCH net-next] ice: access @pp through
 netmem_desc instead of page
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

To eliminate the use of struct page in page pool, the page pool users
should use netmem descriptor and APIs instead.

Make ice driver access @pp through netmem_desc instead of page.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 969d4f8f9c02..ae8a4e35cb10 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1251,7 +1251,7 @@ static int ice_lbtest_receive_frames(struct ice_rx_ring *rx_ring)
 		rx_buf = &rx_ring->rx_fqes[i];
 		page = __netmem_to_page(rx_buf->netmem);
 		received_buf = page_address(page) + rx_buf->offset +
-			       page->pp->p.offset;
+			       pp_page_to_nmdesc(page)->pp->p.offset;
 
 		if (ice_lbtest_check_frame(received_buf))
 			valid_frames++;
-- 
2.17.1

