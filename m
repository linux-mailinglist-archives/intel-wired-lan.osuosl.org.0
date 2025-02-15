Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E35AA37053
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Feb 2025 20:04:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F01E24126E;
	Sat, 15 Feb 2025 19:04:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VsiGDKeymsiu; Sat, 15 Feb 2025 19:04:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 115C241264
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739646276;
	bh=eDvpuk0CR6sJWCa60+MpwNNb0XigVBbopBtfb5BpIIE=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Cl93j1x83vPncgK8fc1XrY8EKSgeYEe+gdsOvocywfR48hjN4b3qq4htarXPgsHw6
	 Fwk3dvbPHj5Em9Fha0GsYFvpu2zOGF4dyvwJ44woV8ugl8Fpf6S92SCeJO2LUdPeMc
	 OX2HmKcPUyXUM/aZboSDEdD+YWaPpnpEwGEdTxKzbSnfkN+8KG0JN6+ZMqYjWuspAG
	 11ULleU2JQp8AukdOeIab3J7B8cFUoK9DkpigxFHQZOjbQBQH917KU3tNy9rdDmqY9
	 wR8RJ2YR/ydH/vArp4JwF6K2S0e5OwbBZspmGBHobSLiEL5RQXsjbbTBBSu+D3V5uz
	 2cgZoRGEtJZlQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 115C241264;
	Sat, 15 Feb 2025 19:04:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 43ACC72
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 19:04:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3146F41260
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 19:04:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ySyFlRXcfabM for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Feb 2025 19:04:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3E2154125F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E2154125F
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3E2154125F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 19:04:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7CE5C5C485C;
 Sat, 15 Feb 2025 19:03:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D038CC4CEDF;
 Sat, 15 Feb 2025 19:04:29 +0000 (UTC)
Date: Sat, 15 Feb 2025 11:04:28 -0800
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
Message-ID: <20250215110428.68f25c5e@kernel.org>
In-Reply-To: <20250215110159.0c1888ae@kernel.org>
References: <20250207021943.814768-1-yoong.siang.song@intel.com>
 <20250207021943.814768-2-yoong.siang.song@intel.com>
 <20250215110159.0c1888ae@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739646271;
 bh=Df2b8aVgJjFNJGQ3bD+jOZ3m5M4kbFV5KsneEFnbz1Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=HOSb0Y5rS2c+iF55klymj6B0z0P3nkofcNiCgsMP5plndlLE+6Ux2rzZK9kiCXW0A
 8Xv9r5UvZhELq5KpOx3B3v+yWB5mCSwHcqK5aJtn5i9hYLs9s/hOsJ+NSMtxlU6Qzl
 SAmAb3QN87QQ4fNEWxSaL0jt3Bc2P5Unl9V11YdJZrVbuWkOxjDpNQv8aOVjjCDGEk
 BRrau+nibXXPqTvtcM4xYrX6rwfHPAQUZu1Sr7G6uCXWbwx3ZmngcvJqZYiyb0h0rq
 WO1T/S5i1kzxfiA2YYuU0zPyax6bsKZ3H6dUECjmFG8VpVNYCdjH2uRurDUOBQw58t
 V3Llh8KYjzaug==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=HOSb0Y5r
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

On Sat, 15 Feb 2025 11:01:59 -0800 Jakub Kicinski wrote:
> On Fri,  7 Feb 2025 10:19:39 +0800 Song Yoong Siang wrote:
> > Extend the XDP Tx metadata framework so that user can requests launch time
> > hardware offload, where the Ethernet device will schedule the packet for
> > transmission at a pre-determined time called launch time. The value of
> > launch time is communicated from user space to Ethernet driver via
> > launch_time field of struct xsk_tx_metadata.  
> 
> Acked-by: Jakub Kicinski <kuba@kernel.org>

Sorry, I take that back, you haven't regenerated the code after
renaming the flag:

diff --git a/include/uapi/linux/netdev.h b/include/uapi/linux/netdev.h
index fc0aa971d276..b97ff8bbb0c6 100644
--- a/include/uapi/linux/netdev.h
+++ b/include/uapi/linux/netdev.h
@@ -59,13 +59,13 @@ enum netdev_xdp_rx_metadata {
  *   by the driver.
  * @NETDEV_XSK_FLAGS_TX_CHECKSUM: L3 checksum HW offload is supported by the
  *   driver.
- * @NETDEV_XSK_FLAGS_LAUNCH_TIME: Launch Time HW offload is supported by the
- *   driver.
+ * @NETDEV_XSK_FLAGS_TX_LAUNCH_TIME_FIFO: Launch time HW offload is supported
+ *   by the driver.
  */
 enum netdev_xsk_flags {
        NETDEV_XSK_FLAGS_TX_TIMESTAMP = 1,
        NETDEV_XSK_FLAGS_TX_CHECKSUM = 2,
-       NETDEV_XSK_FLAGS_LAUNCH_TIME = 4,
+       NETDEV_XSK_FLAGS_TX_LAUNCH_TIME_FIFO = 4,
 };
 
 enum netdev_queue_type {
diff --git a/tools/include/uapi/linux/netdev.h b/tools/include/uapi/linux/netdev.h
index fc0aa971d276..b97ff8bbb0c6 100644
--- a/tools/include/uapi/linux/netdev.h
+++ b/tools/include/uapi/linux/netdev.h
@@ -59,13 +59,13 @@ enum netdev_xdp_rx_metadata {
  *   by the driver.
  * @NETDEV_XSK_FLAGS_TX_CHECKSUM: L3 checksum HW offload is supported by the
  *   driver.
- * @NETDEV_XSK_FLAGS_LAUNCH_TIME: Launch Time HW offload is supported by the
- *   driver.
+ * @NETDEV_XSK_FLAGS_TX_LAUNCH_TIME_FIFO: Launch time HW offload is supported
+ *   by the driver.
  */
 enum netdev_xsk_flags {
        NETDEV_XSK_FLAGS_TX_TIMESTAMP = 1,
        NETDEV_XSK_FLAGS_TX_CHECKSUM = 2,
-       NETDEV_XSK_FLAGS_LAUNCH_TIME = 4,
+       NETDEV_XSK_FLAGS_TX_LAUNCH_TIME_FIFO = 4,
 };
 
 enum netdev_queue_type {
