Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C1FCC0DED
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Dec 2025 05:20:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B15D2821E3;
	Tue, 16 Dec 2025 04:20:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VeNupxVNyesr; Tue, 16 Dec 2025 04:20:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 84673821F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765858841;
	bh=6qQGXRw0JmSkbF1VRkTl2wi0ub7QsQOJpcz3FBQSCoQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U8H2s6TkEhRYnVY67Oc/O9/WTdTQM4MtdkLpSV/Ru23fWDeaMuXBn6cTWmInM1/Mb
	 dIXTzOvLN02XAmKTWLZdw49EG1k50AkZHf/dbzo2Z2bVVbNQ1/kvRIoL1oNoJMpwQb
	 xMt5HjwAJfc+BuvPTb/RAlFdwj+BE+Z7DgonhyNVwjizWVRDlAkpOg01wP8rwcs74w
	 DV0VXiJMx2zL54ggoOjnTw4VR7SoImpEVZM794dA7UYJNSxQJcRez/nDAfSCVPlgPo
	 NK2hgwbZcsqCY10YisQtm3zlU5/ufc0Vsn2hcpdZGMdZO2nRMDVGdNreHUa65OcviT
	 lIXLt7OkYVnkw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84673821F6;
	Tue, 16 Dec 2025 04:20:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E92E8151
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Dec 2025 04:20:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CFF8460F63
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Dec 2025 04:20:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lft55fxSROvN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Dec 2025 04:20:38 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=2001:8b0:10b:1236::1;
 helo=casper.infradead.org; envelope-from=willy@infradead.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5983B60F46
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5983B60F46
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5983B60F46
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Dec 2025 04:20:34 +0000 (UTC)
Received: from willy by casper.infradead.org with local (Exim 4.98.2 #2 (Red
 Hat Linux)) id 1vVMXe-00000002o0y-3VFp;
 Tue, 16 Dec 2025 04:20:06 +0000
Date: Tue, 16 Dec 2025 04:20:06 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Byungchul Park <byungchul@sk.com>
Cc: netdev@vger.kernel.org, kuba@kernel.org, linux-kernel@vger.kernel.org,
 kernel_team@skhynix.com, harry.yoo@oracle.com, david@redhat.com,
 toke@redhat.com, asml.silence@gmail.com, almasrymina@google.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
Message-ID: <aUDd9lLy76sBejrP@casper.infradead.org>
References: <20251216040723.10545-1-byungchul@sk.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251216040723.10545-1-byungchul@sk.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=6qQGXRw0JmSkbF1VRkTl2wi0ub7QsQOJpcz3FBQSCoQ=; b=gmwJBtzH6RNaOjJj8Ol+4ChGWs
 DLQ0MAdjqAWUojtjOdaaXRyI4S4UO50luZzYFGyO5UfHShg/i15PVUkr0z/RmCtNxLUxgaxSYHXMl
 2qN1M8cSXnrf754uT/fumx1dujDsKyolpWokXTECXKNKTQm75uW1tks19MZcTvr9NQZN2dYOXb6H/
 dDykcWGidk1hOuv42iF6Qs4qtrpFww65yJV8boCeE/BEvBsR+DrvVJ5N2sT1oY3f3e28GDI4v/48f
 LCPwi21hE8hQdy8oZdgHYTjQAtZFaSmlVqJue3lagnSUrgCc3MyF2jiPyl46XkByiv5PlFfI/GRuD
 m+eqLKLQ==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=infradead.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=infradead.org header.i=@infradead.org
 header.a=rsa-sha256 header.s=casper.20170209 header.b=gmwJBtzH
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: access @pp through
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

On Tue, Dec 16, 2025 at 01:07:23PM +0900, Byungchul Park wrote:
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -1251,7 +1251,7 @@ static int ice_lbtest_receive_frames(struct ice_rx_ring *rx_ring)
>  		rx_buf = &rx_ring->rx_fqes[i];
>  		page = __netmem_to_page(rx_buf->netmem);
>  		received_buf = page_address(page) + rx_buf->offset +
> -			       page->pp->p.offset;
> +			       pp_page_to_nmdesc(page)->pp->p.offset;

Shouldn't we rather use:

		nmdesc = __netmem_to_nmdesc(rx_buf->netmem);
		received_buf = nmdesc_address(nmdesc) + rx_buf->offset +
				nmdesc->pp->p_offset;

(also. i think we're missing a nmdesc_address() function in our API).
