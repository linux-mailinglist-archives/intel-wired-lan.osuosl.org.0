Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFE6A23E3D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jan 2025 14:18:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6754D40895;
	Fri, 31 Jan 2025 13:18:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HdW05hzDy5jp; Fri, 31 Jan 2025 13:18:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B1DD408BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738329500;
	bh=7ddmw+MSH+bE+lpmVD4Wnv3gYJ4CsT3P6TUawXH7hJk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=t1HdUQbNroKe9FUyjHiCiHI82Krb0J6sHQgHziUMNeY9J1N0Yasn50ZwbiUkJy/C7
	 aKRZF2gw/5/x11tbqCacS+tD9GS1dqD/BlRexUDGmXWD2p5xlAMRY8LOAdFHMIHF/G
	 3+Js9gWDTZcXsr+/khrvtj8CGiH6LUERoSrzU2O5U4IkuhgVaZPdhRByJ9+fiTlnf+
	 mRGWBixN0N0gawsatVzWfb/TVTaSIuutktqJp84fjQQ7mOPk+MwkPjYlBCypVNxOBz
	 aWH5HocKppovFbV0jPSYqmyRXoQOaQv5e9Dqpexd4SR/SF2s5WdoMAn4VL8zMAk+h2
	 0c50c7Tg3Ps9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B1DD408BA;
	Fri, 31 Jan 2025 13:18:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E5D7816E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 13:18:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CA2F340F2E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 13:18:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DWRQ1vNz6SG2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jan 2025 13:18:17 +0000 (UTC)
X-Greylist: delayed 303 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 31 Jan 2025 13:18:16 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6005840106
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6005840106
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.136.64.227;
 helo=mta-64-227.siemens.flowmailer.net;
 envelope-from=fm-68982-20250131131309ece8069d265a011406-aazqap@rts-flowmailer.siemens.com;
 receiver=<UNKNOWN> 
Received: from mta-64-227.siemens.flowmailer.net
 (mta-64-227.siemens.flowmailer.net [185.136.64.227])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6005840106
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 13:18:16 +0000 (UTC)
Received: by mta-64-227.siemens.flowmailer.net with ESMTPSA id
 20250131131309ece8069d265a011406
 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jan 2025 14:13:10 +0100
Message-ID: <f86bc94c97d6e91b3564d3df6f91722318c8d24f.camel@siemens.com>
From: Florian Bezdeka <florian.bezdeka@siemens.com>
To: Zdenek Bouska <zdenek.bouska@siemens.com>, Tony Nguyen	
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>,  Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet	
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni	
 <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann	
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John
 Fastabend <john.fastabend@gmail.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, Song Yoong Siang <yoong.siang.song@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org, Jan Kiszka
 <jan.kiszka@siemens.com>
Date: Fri, 31 Jan 2025 14:13:08 +0100
In-Reply-To: <20250128-igc-fix-hw-rx-timestamp-when-passed-by-zc-xdp-v1-1-b765d3e972de@siemens.com>
References: <20250128-igc-fix-hw-rx-timestamp-when-passed-by-zc-xdp-v1-1-b765d3e972de@siemens.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-68982:519-21489:flowmailer
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; s=fm2; 
 d=siemens.com; i=florian.bezdeka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=7ddmw+MSH+bE+lpmVD4Wnv3gYJ4CsT3P6TUawXH7hJk=;
 b=XWS5uL4RZBFQEOgbrkoinobFHaphy8O+5E+P3yGXLd7XDgQnHjyupzHw/nFjHHjoFdTGf8
 mvcNlRBNYG8wW8IswCiNjHTMgAeNTd32AjpAXjStl8fyMt6y0rmFi/Yztz3oayTTUZiOqW3a
 sQaxSTerPXPAzJLqFHYAVUGkM8zHd3MPwWKw6SUnzJqfKdUeo9bHmdirmf4oOL/0OiGPXbER
 LJi8XzNCm80kQsfkobrEsJKbXnCXlQOD0N9Au9jkV92M0qC6kNZQPoxrc11wtPjGcoN+mHl5
 8Erb2wyxszaDR5KHq87NIv6bd1IyNXl4K6+BYuiaKdarLvOVMgfCkBEw==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=florian.bezdeka@siemens.com
 header.a=rsa-sha256 header.s=fm2 header.b=XWS5uL4R
Subject: Re: [Intel-wired-lan] [PATCH] igc: Fix HW RX timestamp when passed
 by ZC XDP
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

On Tue, 2025-01-28 at 13:26 +0100, Zdenek Bouska wrote:
> Fixes HW RX timestamp in the following scenario:
> - AF_PACKET socket with enabled HW RX timestamps is created
> - AF_XDP socket with enabled zero copy is created
> - frame is forwarded to the BPF program, where the timestamp should
>   still be readable (extracted by igc_xdp_rx_timestamp(), kfunc
>   behind bpf_xdp_metadata_rx_timestamp())
> - the frame got XDP_PASS from BPF program, redirecting to the stack
> - AF_PACKET socket receives the frame with HW RX timestamp
>=20
> Moves the skb timestamp setting from igc_dispatch_skb_zc() to
> igc_construct_skb_zc() so that igc_construct_skb_zc() is similar to
> igc_construct_skb().
>=20
> This issue can also be reproduced by running:
>  # tools/testing/selftests/bpf/xdp_hw_metadata enp1s0
> When a frame with the wrong port 9092 (instead of 9091) is used:
>  # echo -n xdp | nc -u -q1 192.168.10.9 9092
> then the RX timestamp is missing and xdp_hw_metadata prints:
>  skb hwtstamp is not found!
>=20
> With this fix or when copy mode is used:
>  # tools/testing/selftests/bpf/xdp_hw_metadata -c enp1s0
> then RX timestamp is found and xdp_hw_metadata prints:
>  found skb hwtstamp =3D 1736509937.852786132
>=20
> Fixes: 069b142f5819 ("igc: Add support for PTP .getcyclesx64()")
> Signed-off-by: Zdenek Bouska <zdenek.bouska@siemens.com>
> ---

Reviewed-by: Florian Bezdeka <florian.bezdeka@siemens.com>
