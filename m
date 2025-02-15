Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C39D0A3704A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Feb 2025 20:02:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3DE04122D;
	Sat, 15 Feb 2025 19:02:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jTlTKFfLIhp1; Sat, 15 Feb 2025 19:02:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E066240C66
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739646128;
	bh=vWR3bBMAioKQPxN7dBkqq/OsP1n+mTxwWIuse9vpWks=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ina/F4cyZmA6sJf4dU32w1TKzSrexPVhKxZetTDpaPTXh9I1yHG/58OfdEvjAMO56
	 tXrKwx6AkWPAXf53Z0hk/w+h4fzK9I1d+s7szApH3gZYwEv8jMtUeOn2WYe5+MW/SS
	 b2+JFRp0pwllXgqPXY6YgAOIsY6E/Jv1B9283IJMRc+MV2hWUr6pF0LHqjwH9IZs9k
	 1fL3a0XIEqWbFh1rh6EFVmcRB9j7SQ0ztZu7wmUuxVZCY4Pvg0dG2vBaThWPEwbm5N
	 dDGwENBnbNj8hlO5OEV/OOI9qOkUz0MDsTgqVYTkqjc59S0QSAJ2ladvIz+Ss2vsji
	 WmVFWz8M9WALA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E066240C66;
	Sat, 15 Feb 2025 19:02:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D8A6572
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 19:02:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D371F408B6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 19:02:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dsn7-H59Vn_2 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Feb 2025 19:02:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 174E64080C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 174E64080C
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 174E64080C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 19:02:04 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A681A5C0FCD;
 Sat, 15 Feb 2025 19:01:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7D0BC4CEDF;
 Sat, 15 Feb 2025 19:02:00 +0000 (UTC)
Date: Sat, 15 Feb 2025 11:01:59 -0800
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
Message-ID: <20250215110159.0c1888ae@kernel.org>
In-Reply-To: <20250207021943.814768-2-yoong.siang.song@intel.com>
References: <20250207021943.814768-1-yoong.siang.song@intel.com>
 <20250207021943.814768-2-yoong.siang.song@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739646122;
 bh=HudMfY49mSqAmZgoZf2dNEnXXORoyrdxby3o1hdTgAM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dhHbjle+yGglktEW8k7sNojmTldB4vX4N3Z0d65mfgb3kNBfztQtB2ihersP3kWQ+
 Kk2mNdH9UeVAkubXqkexsfz7Wnrc/zOLsJASmtFLlTV5tW4ropul2XVQLV9Yhf+5td
 3uUaW14oEhvOWOJxbjRpgTMBoyh8jn2Yt/fhpoQoiF80vBk4k1YiaTfAQmntQrXSCJ
 jQmVne+gM1bZ0OEemKcArDYoPcbiU6iP52UDfirZH955ffStsNghUdmWNzyecpCR/w
 YxuaZmNxQSjg60JVHX/zShnBQEuc16jrPdoMByZZRYzL4dx71LLA7F3Tt92GS/58zT
 Cp8DMnbuH0G7Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=dhHbjle+
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v10 1/5] xsk: Add launch time
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

On Fri,  7 Feb 2025 10:19:39 +0800 Song Yoong Siang wrote:
> Extend the XDP Tx metadata framework so that user can requests launch time
> hardware offload, where the Ethernet device will schedule the packet for
> transmission at a pre-determined time called launch time. The value of
> launch time is communicated from user space to Ethernet driver via
> launch_time field of struct xsk_tx_metadata.

Acked-by: Jakub Kicinski <kuba@kernel.org>
