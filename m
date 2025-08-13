Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 335CFB23DD1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 03:45:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1817F6078A;
	Wed, 13 Aug 2025 01:45:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7gRD8b4k_uIE; Wed, 13 Aug 2025 01:45:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94E3D60730
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755049517;
	bh=/Ef8kmPHiVfX5RBEBf5AYwdCkSeUpUIBwfEojdnzIGY=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KvOsX5yKE0gm4KS7d63KqKu+YtoaLqlEoYykj4m3f9SumFjT61fMtXIQkmFqQBU6V
	 gJA+fkfzefgIKdP9OI3Q8PtY29jUOuUuZVvqlShDMnlTDuZS2UAK0a6/m03f46xV+B
	 XIZGGG6Sw2FbifcBgdhd19OIATpEBRZvskRP+grIlh3UUUI0lziO5DHH0BZGFDVh30
	 V7ktpu6NTn1NOtB8vQabghMBEc732KQlEV840O82TpQGx0o8q40zVrmy3X/vzdP6xj
	 XxFhOB2bvOkfjAPglLCbWdWVR+I5F6Ow8hu+0zejXA0OrPHD5Xpaww7MDTrRQ+I737
	 9kxqHhgsbYLqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94E3D60730;
	Wed, 13 Aug 2025 01:45:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id EA8851C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 01:45:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D015B833C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 01:45:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wObtI_KYt3bq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 01:45:15 +0000 (UTC)
X-Greylist: delayed 120210 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 13 Aug 2025 01:45:15 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 324A483337
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 324A483337
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 324A483337
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 01:45:15 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 4C360601DB;
 Wed, 13 Aug 2025 01:45:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 471B9C4CEF0;
 Wed, 13 Aug 2025 01:45:12 +0000 (UTC)
Date: Tue, 12 Aug 2025 18:45:11 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Michal Kubiak
 <michal.kubiak@intel.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Alexei
 Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Simon
 Horman <horms@kernel.org>, nxne.cnse.osdt.itp.upstreaming@intel.com,
 bpf@vger.kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <20250812184511.0e49633c@kernel.org>
In-Reply-To: <20250811161044.32329-1-aleksander.lobakin@intel.com>
References: <20250811161044.32329-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1755049513;
 bh=EyWXjko/7dgvRlT6ZxCiXfxg+QwMtBwoRb56YG5mCpE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=k+g8TX/4WGD65cuMqpB8QWBiGY83Xv0oF5LQ/RCAxEoLBfkxC3HTw56YVLHh+AD0n
 bhGmZubPOcl4qmUodAkPHA8sGxvnV+ajlJYqSVLVzvCFhsUwa3IGF9PpMv0tgu1HI6
 +T81+S6AW8pIjW6zi4/sLo0NigFzhiQ0GjPmLZEXzy4T2bixZEBy057MudOwLwxJCa
 brDHXhWBGUDWk/HEPV7LUsWs5YNQ3jP+gfyGUgLbssGmV3MpjvHMYXWIboCL+QeTgu
 +y5KVv2K0dc9P5Yab45jOXukoMNEgA1Mg+307TT0mEN2mgvF0aQvpHhwpJ7kNV38Rw
 YB7gCm8LRmrxg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=k+g8TX/4
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 00/13] idpf: add XDP
 support
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

On Mon, 11 Aug 2025 18:10:31 +0200 Alexander Lobakin wrote:
> From v3[0]:
> * 01/13: make the xdp_init_buff() micro-opt generic, include some
>          bloat-o-meter and perf diffs (Simon, Kees);
> * 08/13: don't include XDPSQs in Ethtool's 'other_count' (Ethtool
>          channels are interrupts!) (Jakub);
> * 11/13:
>   * finalize XDPSQs a bit earlier on Rx;
>   * show some bloat-o-meter and performance diffs for
>     __LIBETH_WORD_ACCESS (Jakub).

LGTM, thanks!
