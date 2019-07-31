Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3D67CBF1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2019 20:26:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 820BA85C10;
	Wed, 31 Jul 2019 18:26:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XCbmfgQTejWZ; Wed, 31 Jul 2019 18:26:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6CD2A85A5B;
	Wed, 31 Jul 2019 18:26:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2DEC11BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 18:26:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 29BE784C3E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 18:26:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vf0fhk2mkd4w for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2019 18:26:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6BD4984B7E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 18:26:41 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id n9so26242885pgc.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 11:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=gXFTZDZYh/lSmKVmhvKdGRFWTUDqCdiSs/uTEkViV5Q=;
 b=R3xzSA/5pwySc9yVdiB8925NpKw/nRRvZ16m897cP6Q8NrgZExMcmcnwBtvHx5+59A
 H3vMp9kys4CmTTowPb2wloMfiVMk1dMfbZZrRxDnldIbUSWMAcO+5J/KDgTnCzQrGwge
 XyECovq+Pq10XntCUeLU5G8SJ+pw36bzznLiBIoCRX1BO+ph7FgiQjwcV/djYuV/0kU7
 am/gSAyCachclFeUbQrEa7l6lgvflOig/MuXtqjZM1aRoxpVju0pUrsT4TQVH0EQo6xO
 bvuiK9CbiCnv1oAmrs/k1bWOSy+1X9rs0vDmr6Vc5jWK07XV8PQSoRBHhqEAXf1jYumh
 zJHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=gXFTZDZYh/lSmKVmhvKdGRFWTUDqCdiSs/uTEkViV5Q=;
 b=GmDnKNYlapqyRNTp8bupFcnef67Ju9pUjoYRYix1veMS2uKLRAVVYR8WNjYOmRp1E/
 xDepVYyNUs7F9Q6gU5Bi28s4F3RHCpnlHnzGT/V4hImeTDejnJsbQzWAClT0QIaqQWd3
 ZvNnUUg92ZISu3nWpviAIcnD09WdkyJ5KI1lSDU/qiQAD7p6VPcCOZcUN5McbRGGcRnC
 zotwCkDPgcvmjS6rz/UMP0yigJvTAXwfYyXuqzfnr6KcpsrirgK0sWuHqIGwtizhRIVn
 oBtVJJIaLyc3NAFocX75Cj+Y34EtGoJ8NOqkssSd6RFhfjd1k2Adt99nycgbg5g8opgU
 gdxg==
X-Gm-Message-State: APjAAAXLtxGWH50ZiilHJ3P9RQ6MvlYFlddFiQxuIet3EwUoUYIWYRxX
 ZptcCEuVDROIF8MSTXZhSXA=
X-Google-Smtp-Source: APXvYqztLKuPfMIY2v0mu9mgwt9015tFQ3xt6+jTlYeeWpMtx7iYXxzjOfmXKVkIFFTpwCIHyEfnUw==
X-Received: by 2002:a17:90a:1d8:: with SMTP id 24mr4353044pjd.70.1564597601115; 
 Wed, 31 Jul 2019 11:26:41 -0700 (PDT)
Received: from [172.26.116.133] ([2620:10d:c090:180::1:768c])
 by smtp.gmail.com with ESMTPSA id 195sm111860815pfu.75.2019.07.31.11.26.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 11:26:40 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Kevin Laatz" <kevin.laatz@intel.com>
Date: Wed, 31 Jul 2019 11:26:39 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <AB07E875-FFAE-4F5F-8A8C-EA38CE9D4580@gmail.com>
In-Reply-To: <20190730085400.10376-10-kevin.laatz@intel.com>
References: <20190724051043.14348-1-kevin.laatz@intel.com>
 <20190730085400.10376-1-kevin.laatz@intel.com>
 <20190730085400.10376-10-kevin.laatz@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 09/11] samples/bpf: add
 buffer recycling for unaligned chunks to xdpsock
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 30 Jul 2019, at 1:53, Kevin Laatz wrote:

> This patch adds buffer recycling support for unaligned buffers. Since 
> we
> don't mask the addr to 2k at umem_reg in unaligned mode, we need to 
> make
> sure we give back the correct (original) addr to the fill queue. We 
> achieve
> this using the new descriptor format and associated masks. The new 
> format
> uses the upper 16-bits for the offset and the lower 48-bits for the 
> addr.
> Since we have a field for the offset, we no longer need to modify the
> actual address. As such, all we have to do to get back the original 
> address
> is mask for the lower 48 bits (i.e. strip the offset and we get the 
> address
> on it's own).
>
> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
> Signed-off-by: Bruce Richardson <bruce.richardson@intel.com>
>
> ---
> v2:
>   - Removed unused defines
>   - Fix buffer recycling for unaligned case
>   - Remove --buf-size (--frame-size merged before this)
>   - Modifications to use the new descriptor format for buffer 
> recycling
> ---
>  samples/bpf/xdpsock_user.c | 24 +++++++++++++++---------
>  1 file changed, 15 insertions(+), 9 deletions(-)
>
> diff --git a/samples/bpf/xdpsock_user.c b/samples/bpf/xdpsock_user.c
> index 756b00eb1afe..62b2059cd0e3 100644
> --- a/samples/bpf/xdpsock_user.c
> +++ b/samples/bpf/xdpsock_user.c
> @@ -475,6 +475,7 @@ static void kick_tx(struct xsk_socket_info *xsk)
>
>  static inline void complete_tx_l2fwd(struct xsk_socket_info *xsk)
>  {
> +	struct xsk_umem_info *umem = xsk->umem;
>  	u32 idx_cq = 0, idx_fq = 0;
>  	unsigned int rcvd;
>  	size_t ndescs;
> @@ -487,22 +488,21 @@ static inline void complete_tx_l2fwd(struct 
> xsk_socket_info *xsk)
>  		xsk->outstanding_tx;
>
>  	/* re-add completed Tx buffers */
> -	rcvd = xsk_ring_cons__peek(&xsk->umem->cq, ndescs, &idx_cq);
> +	rcvd = xsk_ring_cons__peek(&umem->cq, ndescs, &idx_cq);
>  	if (rcvd > 0) {
>  		unsigned int i;
>  		int ret;
>
> -		ret = xsk_ring_prod__reserve(&xsk->umem->fq, rcvd, &idx_fq);
> +		ret = xsk_ring_prod__reserve(&umem->fq, rcvd, &idx_fq);
>  		while (ret != rcvd) {
>  			if (ret < 0)
>  				exit_with_error(-ret);
> -			ret = xsk_ring_prod__reserve(&xsk->umem->fq, rcvd,
> -						     &idx_fq);
> +			ret = xsk_ring_prod__reserve(&umem->fq, rcvd, &idx_fq);
>  		}
> +
>  		for (i = 0; i < rcvd; i++)
> -			*xsk_ring_prod__fill_addr(&xsk->umem->fq, idx_fq++) =
> -				*xsk_ring_cons__comp_addr(&xsk->umem->cq,
> -							  idx_cq++);
> +			*xsk_ring_prod__fill_addr(&umem->fq, idx_fq++) =
> +				*xsk_ring_cons__comp_addr(&umem->cq, idx_cq++);
>
>  		xsk_ring_prod__submit(&xsk->umem->fq, rcvd);
>  		xsk_ring_cons__release(&xsk->umem->cq, rcvd);
> @@ -549,7 +549,11 @@ static void rx_drop(struct xsk_socket_info *xsk)
>  	for (i = 0; i < rcvd; i++) {
>  		u64 addr = xsk_ring_cons__rx_desc(&xsk->rx, idx_rx)->addr;
>  		u32 len = xsk_ring_cons__rx_desc(&xsk->rx, idx_rx++)->len;
> -		char *pkt = xsk_umem__get_data(xsk->umem->buffer, addr);
> +		u64 offset = addr >> XSK_UNALIGNED_BUF_OFFSET_SHIFT;
> +
> +		addr &= XSK_UNALIGNED_BUF_ADDR_MASK;
> +		char *pkt = xsk_umem__get_data(xsk->umem->buffer,
> +				addr + offset);

The mask constants should not be part of the api - this should be
hidden behind an accessor.

Something like:
   u64 addr = xsk_umem__get_addr(xsk->umem, handle);




>  		hex_dump(pkt, len, addr);
>  		*xsk_ring_prod__fill_addr(&xsk->umem->fq, idx_fq++) = addr;
> @@ -655,7 +659,9 @@ static void l2fwd(struct xsk_socket_info *xsk)
>  							  idx_rx)->addr;
>  			u32 len = xsk_ring_cons__rx_desc(&xsk->rx,
>  							 idx_rx++)->len;
> -			char *pkt = xsk_umem__get_data(xsk->umem->buffer, addr);
> +			u64 offset = addr >> XSK_UNALIGNED_BUF_OFFSET_SHIFT;
> +			char *pkt = xsk_umem__get_data(xsk->umem->buffer,
> +				(addr & XSK_UNALIGNED_BUF_ADDR_MASK) + offset);
>
>  			swap_mac_addresses(pkt);
>
> -- 
> 2.17.1
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
