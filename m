Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C95C3B8C7C8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Sep 2025 14:21:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A910615A6;
	Sat, 20 Sep 2025 12:21:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e01qfoRFmMaG; Sat, 20 Sep 2025 12:21:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6AA8615A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758370881;
	bh=nSzPM9DofWYvGoUXErHohJWv59e//A6QklafV5Ais8I=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TvN90Md2YLeA+qM6U3QVmLv609ItskVhwlCiqn+rjKKfg9EWgEePUouMZ1HZN9Bnm
	 2GgYORtfchkc0nJoK7cSFypoaXD68A8tElpIXEBjGNw/Thp9fjvkqyckG90C+2NVg5
	 HXvC8rAK6TutqaJDvoh3kcxg5piYeklfZd872KdHlYWHJ/3iOZSX6BrtbD+ilXmral
	 sPRT4jK4nTjsJCwMBPbu8qKxp9btf+DQ/2CW6+JB46nSc9NvFZTriFAc6N/X+8ZHE5
	 o09oXkaAMl4KSX4twGJmvurlXppiz2S+w9QiksaPQlSkGsr74rX5+mZu3MxTdxt4Gd
	 sLVOLzAAyHjXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6AA8615A7;
	Sat, 20 Sep 2025 12:21:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9D6AC219
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 12:21:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8F1E583E12
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 12:21:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W7hgboMsmSeQ for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Sep 2025 12:21:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=lorenzo@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B01CA838FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B01CA838FB
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B01CA838FB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 12:21:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 0C9D14464C;
 Sat, 20 Sep 2025 12:21:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 617DAC4CEF7;
 Sat, 20 Sep 2025 12:21:18 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Sat, 20 Sep 2025 14:20:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250920-xdp-meta-rxcksum-v1-1-35e76a8a84e7@kernel.org>
References: <20250920-xdp-meta-rxcksum-v1-0-35e76a8a84e7@kernel.org>
In-Reply-To: <20250920-xdp-meta-rxcksum-v1-0-35e76a8a84e7@kernel.org>
To: Donald Hunter <donald.hunter@gmail.com>, 
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, 
 Simon Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, 
 Stanislav Fomichev <sdf@fomichev.me>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Andrii Nakryiko <andrii@kernel.org>, 
 Martin KaFai Lau <martin.lau@linux.dev>, 
 Eduard Zingerman <eddyz87@gmail.com>, Song Liu <song@kernel.org>, 
 Yonghong Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, 
 Hao Luo <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, 
 Shuah Khan <shuah@kernel.org>
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758370878;
 bh=qmhQ5jk5ZWkgG/yTVBSLdGX0usuVMNTWO7fxuZpsTFs=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=GEVeZNi2JksDR00LDpwzC2h5oVY0lpNPAaGhEBrRJrHZDZsUcJIy1VgPOgvrMftcO
 aWWICBF83QhqmZb2P40ZyLwkXc6tZFnWf99v+2yp0oTwbRq06IK2xaG036qVuxNuHB
 9Fn1LhuTgvhahiEvS5rEEL28WTQ/nxSqIxmy4v39kdcbOX8Lhnk/kO17jhoDOOdkqx
 o3Im4e8gNBJ2FXYOwk/l/6nNpY2IgI/gO9P0v1yKq78TlQaeAjkJA+RO+8tkFKEBl7
 /f6ocoMuNj+amQ8ykVIM40rUIHz7NzVNREdw3h3d9IUSjXcJtS3Nmv3l5WsWkBYwnq
 eTlJnLSL6SfOQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=GEVeZNi2
Subject: [Intel-wired-lan] [PATCH RFC bpf-next 1/6] netlink: specs: Add XDP
 RX checksum capability to XDP metadata specs
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

Introduce XDP RX checksum capability to XDP metadata specs. XDP RX
checksum will be use by devices capable of exposing receive checksum
result via bpf_xdp_metadata_rx_checksum().

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 Documentation/netlink/specs/netdev.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/netlink/specs/netdev.yaml b/Documentation/netlink/specs/netdev.yaml
index e00d3fa1c152d7165e9485d6d383a2cc9cef7cfd..00699bf4a7fdb67c6b9ee3548098b0c933fd39a4 100644
--- a/Documentation/netlink/specs/netdev.yaml
+++ b/Documentation/netlink/specs/netdev.yaml
@@ -61,6 +61,11 @@ definitions:
         doc: |
           Device is capable of exposing receive packet VLAN tag via
           bpf_xdp_metadata_rx_vlan_tag().
+      -
+        name: checksum
+        doc: |
+          Device is capable of exposing receive checksum result via
+          bpf_xdp_metadata_rx_checksum().
   -
     type: flags
     name: xsk-flags

-- 
2.51.0

