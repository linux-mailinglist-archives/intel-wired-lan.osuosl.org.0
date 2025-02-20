Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 179F0A3E757
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Feb 2025 23:17:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C08D360AD8;
	Thu, 20 Feb 2025 22:17:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p1M2JpvqV4B2; Thu, 20 Feb 2025 22:17:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 574B860B56
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740089847;
	bh=5Z/SnatRSZ7txlnqtwK2z1G5kKHBirvYaST5BiztISg=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n2ynba0k/wcPc8e26pIIShradECu1CaRlY6dsLyYVc+kcteBkJwkxifzBdq7TJJid
	 ZUKC5Z/ou74EDUfAzqAq7HhVEKK5NtlhP03t2RmZg1qqFfIF/BZMqdcmJ06LazmLP7
	 bX/dNN2NKNdcgFrF39QIU1Tpy6pml7XAkKSQwGBNNN989BM/p2CBZz4fwgfa810J1G
	 5BNlZgkCPeZi3o+Nq3bBItx70wO7zm7x4qA4V7emiXyZ14BnkGq9VJFwuNxFpm96mV
	 YQHKcNjzlo3FAaNKXRqmmQP7NjJLLD+pc/nerU6wvO+l0leYAJtjiLFuKijfyr3th1
	 xkpOZYSwjivkA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 574B860B56;
	Thu, 20 Feb 2025 22:17:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 98C0F194
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 22:17:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8877D60AD8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 22:17:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LntKj89SeKp3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Feb 2025 22:17:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C57DB60B56
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C57DB60B56
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C57DB60B56
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 22:17:24 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 09F275C61DB;
 Thu, 20 Feb 2025 22:16:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAD62C4CED1;
 Thu, 20 Feb 2025 22:17:20 +0000 (UTC)
Date: Thu, 20 Feb 2025 14:17:19 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Song Yoong Siang <yoong.siang.song@intel.com>
Cc: "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Willem de Bruijn <willemb@google.com>, Florian Bezdeka
 <florian.bezdeka@siemens.com>, Donald Hunter <donald.hunter@gmail.com>,
 Jonathan Corbet <corbet@lwn.net>, Bjorn Topel <bjorn@kernel.org>, Magnus
 Karlsson <magnus.karlsson@intel.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer
 <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, Joe Damato
 <jdamato@fastly.com>, Stanislav Fomichev <sdf@fomichev.me>, Xuan Zhuo
 <xuanzhuo@linux.alibaba.com>, Mina Almasry <almasrymina@google.com>, Daniel
 Jurgens <danielj@nvidia.com>, Andrii Nakryiko <andrii@kernel.org>, Eduard
 Zingerman <eddyz87@gmail.com>, Mykola Lysenko <mykolal@fb.com>, Martin
 KaFai Lau <martin.lau@linux.dev>, Song Liu <song@kernel.org>, Yonghong Song
 <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, Hao Luo
 <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, Shuah Khan
 <shuah@kernel.org>, Alexandre Torgue <alexandre.torgue@foss.st.com>, Jose
 Abreu <joabreu@synopsys.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Faizal Rahim
 <faizal.abdul.rahim@linux.intel.com>, Choong Yong Liang
 <yong.liang.choong@linux.intel.com>, Bouska Zdenek
 <zdenek.bouska@siemens.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 bpf@vger.kernel.org, linux-kselftest@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, intel-wired-lan@lists.osuosl.org,
 xdp-hints@xdp-project.net
Message-ID: <20250220141719.524a8ac6@kernel.org>
In-Reply-To: <20250216093430.957880-2-yoong.siang.song@intel.com>
References: <20250216093430.957880-1-yoong.siang.song@intel.com>
 <20250216093430.957880-2-yoong.siang.song@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740089842;
 bh=fwRMLQoTvvslio/qHTjWfmSIblsDq9Yevo6OmjlR7Us=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gsWDEYRAyTvAs1kE0egmdOtU3gAB6eRj6jBN+O2VX+hwhO9GJDHJEXMI1Ib3ykatk
 Y94KbJctHpMvGeTaR5Bn4Lg06ml7c/7Tx3nicxgy1rzpyronflc4vaJ4nQPbxVUTb3
 34hxJ64z4fyxfFaO2/2NzLQruNO3ZRIyf4T2fnjwHFx2ne/mNBWeU1RH1DVtrfBCCm
 OHRuAMdxAO3dtt8n9vHkM3QSnARODfnsEvU/xgSfHq2Ps/XjkNgv2+z8tAgz/7zNwO
 3tNQwDzo2HJi2H115hXMhbWE0qzve7DLI2VyPgnmKO5mMSOJZNbyNksBWgpsHSKPta
 Avkq0n61gq+Pw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=gsWDEYRA
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v12 1/5] xsk: Add launch time
 hardware offload support to XDP Tx metadata
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

On Sun, 16 Feb 2025 17:34:26 +0800 Song Yoong Siang wrote:
> Extend the XDP Tx metadata framework so that user can requests launch time
> hardware offload, where the Ethernet device will schedule the packet for
> transmission at a pre-determined time called launch time. The value of
> launch time is communicated from user space to Ethernet driver via
> launch_time field of struct xsk_tx_metadata.
> 
> Suggested-by: Stanislav Fomichev <sdf@fomichev.me>
> Acked-by: Stanislav Fomichev <sdf@fomichev.me>
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>

Acked-by: Jakub Kicinski <kuba@kernel.org>
