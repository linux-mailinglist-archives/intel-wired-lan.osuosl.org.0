Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A1890930A5E
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Jul 2024 16:30:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9403D60621;
	Sun, 14 Jul 2024 14:30:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W-tCATQUIhMC; Sun, 14 Jul 2024 14:30:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA12D6062D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720967456;
	bh=2o625fGLUkMIaklL3/YRGzsrD1e/HXNZoujWQNyyMDU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5UE7VxcvFNAcZdkBLwqEdQ8VF5kNKUoVw+I5EmgMJcLNH7xkocF2GGLGPNrIz4vf1
	 tIHFinAlH146NBdff08gP7CmDWrM29CGCyJP09pefHHtoYSvQuzHzkTmHeiTQiVAb5
	 owsvkFCMjHjo4LIzP7N5SjmrBW1CZTghWw0o7vSPYaAwQIMzIJDothDbAC1+gKnE34
	 RM2n1ycE275yiHa75IID+38XUPNwf6p0GAsA2Hx9rOWmpis/XuKXITcqbEVyPO8DMV
	 4tnduuZaTwC7E/xuA5UELxiDpBVdoIWmHsaO5y5gzqDrxNwSyPFqMm54tGSIaR1e7o
	 ZXTgbOTBUqCCQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA12D6062D;
	Sun, 14 Jul 2024 14:30:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9F90C1BF3D5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jul 2024 14:30:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8A74940096
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jul 2024 14:30:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BOW1UZjIbtUo for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Jul 2024 14:30:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2BC4F40010
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2BC4F40010
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2BC4F40010
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jul 2024 14:30:53 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id B1CFECE0AF0;
 Sun, 14 Jul 2024 14:30:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58FB1C116B1;
 Sun, 14 Jul 2024 14:30:49 +0000 (UTC)
Date: Sun, 14 Jul 2024 07:30:48 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20240714073048.77cd4b3f@kernel.org>
In-Reply-To: <20240712093251.18683-7-mateusz.polchlopek@intel.com>
References: <20240712093251.18683-1-mateusz.polchlopek@intel.com>
 <20240712093251.18683-7-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720967449;
 bh=gl8S9FjnxRKPrktUFxcD97UhkZMArlO+FxoS7L5UV3g=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=EucCSd+/8gq5Fmh3ESZSvq/uxlZPp3RVmlNXroU7q1yUZrF6TNEjBHztl3IWTOfrn
 w3gz1rP7vK89xXG/wKBG+AwzWPbb1cUe+JivhJFg7/L5OhDaB6O2x0dkk44G7bDTqh
 D2J0LITdLJoKvuNLhFExS80zZ0vQvA9E//+0kOsOivXhtcbrP1MbBlwN3zTUmSPFJ5
 aGOHSm57Y23/oakJKbqVxAE4BtmUsqGADeYCFgZYPsXlM77RqHbVTD0De/mbH/bHFg
 ElOhhB++eCWaDs5mNVW3tvS+TzvTPKhiTz7Jf9MjY1BII3HilyaiYwiFw9W6TFe+AZ
 5GeaX+yUfvyxA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=EucCSd+/
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 6/6] ice: devlink health:
 dump also skb on Tx hang
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
Cc: willemb@google.com, Wojciech Drewek <wojciech.drewek@intel.com>,
 dwaipayanray1@gmail.com, linux-kernel@vger.kernel.org, joe@perches.com,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org, apw@canonical.com,
 lukas.bulwahn@gmail.com, akpm@linux-foundation.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 12 Jul 2024 05:32:51 -0400 Mateusz Polchlopek wrote:
> +	buf_pos =3D ice_emit_to_buf(buf, buf_size, buf_pos,
> +		"skb len=3D%u headroom=3D%u headlen=3D%u tailroom=3D%u\n"
> +		"mac=3D(%d,%d) net=3D(%d,%d) trans=3D%d\n"
> +		"shinfo(txflags=3D%u nr_frags=3D%u gso(size=3D%hu type=3D%u segs=3D%hu=
))\n"
> +		"csum(0x%x ip_summed=3D%u complete_sw=3D%u valid=3D%u level=3D%u)\n"
> +		"hash(0x%x sw=3D%u l4=3D%u) proto=3D0x%04x pkttype=3D%u iif=3D%d\n",
> +		skb->len, headroom, skb_headlen(skb), tailroom,
> +		has_mac ? skb->mac_header : -1,
> +		has_mac ? skb_mac_header_len(skb) : -1,
> +		skb->network_header,
> +		has_trans ? skb_network_header_len(skb) : -1,
> +		has_trans ? skb->transport_header : -1,
> +		sh->tx_flags, sh->nr_frags,
> +		sh->gso_size, sh->gso_type, sh->gso_segs,
> +		skb->csum, skb->ip_summed, skb->csum_complete_sw,
> +		skb->csum_valid, skb->csum_level,
> +		skb->hash, skb->sw_hash, skb->l4_hash,
> +		ntohs(skb->protocol), skb->pkt_type, skb->skb_iif);

Make it a generic helper in devlink?

> +	if (dev)
> +		buf_pos =3D ice_emit_to_buf(buf, buf_size, buf_pos,
> +					  "dev name=3D%s feat=3D%pNF\n", dev->name,
> +					  &dev->features);
> +	if (sk)
> +		buf_pos =3D ice_emit_to_buf(buf, buf_size, buf_pos,
> +					  "sk family=3D%hu type=3D%u proto=3D%u\n",
> +					  sk->sk_family, sk->sk_type,
> +					  sk->sk_protocol);
> +
> +	if (headroom)
> +		buf_pos =3D ice_emit_hex_to_buf(buf, buf_size, buf_pos,
> +					      "skb headroom: ", skb->head,
> +					      headroom);
> +
> +	seg_len =3D min_t(int, skb_headlen(skb), len);
> +	if (seg_len)
> +		buf_pos =3D ice_emit_hex_to_buf(buf, buf_size, buf_pos,
> +					      "skb linear:   ", skb->data,
> +					      seg_len);
> +	len -=3D seg_len;
> +
> +	if (tailroom)
> +		buf_pos =3D ice_emit_hex_to_buf(buf, buf_size, buf_pos,
> +					      "skb tailroom: ",
> +					      skb_tail_pointer(skb), tailroom);

The printing on tailroom, headroom and frag data seems a bit much.
I guess you're only printing the head SKB so it may be fine. But
I don't think it's useful. The device will probably only care about
the contents of the headers, for other parts only the metadata matters.
No strong preference tho.

> +	for (i =3D 0; len && i < skb_shinfo(skb)->nr_frags; i++) {
> +		skb_frag_t *frag =3D &skb_shinfo(skb)->frags[i];
> +		u32 p_off, p_len, copied;
> +		struct page *p;
> +		u8 *vaddr;
> +
> +		skb_frag_foreach_page(frag, skb_frag_off(frag),
> +				      skb_frag_size(frag), p, p_off, p_len,
> +				      copied) {
> +			seg_len =3D min_t(int, p_len, len);
> +			vaddr =3D kmap_local_page(p);
> +			buf_pos =3D ice_emit_hex_to_buf(buf, buf_size, buf_pos,
> +						      "skb frag:     ",
> +						      vaddr + p_off, seg_len);
> +			kunmap_local(vaddr);
> +			len -=3D seg_len;
> +
> +			if (!len || buf_pos =3D=3D buf_size)
> +				break;
> +		}
> +	}
> +
> +	if (skb_has_frag_list(skb)) {
> +		buf_pos =3D ice_emit_to_buf(buf, buf_size, buf_pos,
> +					  "skb fraglist:\n");
> +		skb_walk_frags(skb, list_skb) {
> +			buf_pos =3D ice_skb_dump_buf(buf, buf_size, buf_pos,
> +						   list_skb);
> +
> +			if (buf_pos =3D=3D buf_size)
> +				break;
> +		}
> +	}

You support transmitting skbs with fraglist? =F0=9F=A4=A8=EF=B8=8F
