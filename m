Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67044679E25
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 17:03:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 278E240B15;
	Tue, 24 Jan 2023 16:03:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 278E240B15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674576215;
	bh=pIwVl4BDyfAlLctAF2uUWpvscVPPA1DEZfqoLoWa2hg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=H4mHDdHPUuCodxfQjq/GxXpVd+4eXK5rx/NMi145PKEHpkKeblXsCRNMI7KUTsDau
	 sQtFZBBKPVAPAIghj5fXOHz7RfnYjlKJpP4/nFtR3aFqqoztryYlfTtT2SZNOkODPe
	 aJuQDa/YHqEU+H4tAWUZq2y1EjWzC83ggz1sXcvXTIJHxh/H8y85aIsA89U1M/8ges
	 vjhIhxBK4wema+sEvc+bcMVxhtqn+6+CeNyqrQJ3ziPEiS3o5Xv2SlwZN1i/b7O9ZK
	 D6iuIFGkT+wXiBVwxY+l0ULYMhrn6t9ORukK8tPg55uyYmf0Zb0hToyC2o3U8I3M3G
	 b/Jxfvq+e9Pug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mp3UbEGRfxoA; Tue, 24 Jan 2023 16:03:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DB0FE400D9;
	Tue, 24 Jan 2023 16:03:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB0FE400D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8475E1BF370
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 06:34:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1CAD260AFC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 06:34:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CAD260AFC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1ZseMCl6nX5r for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jan 2023 06:34:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CF3760AC3
Received: from out2.migadu.com (out2.migadu.com [IPv6:2001:41d0:2:aacc::])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2CF3760AC3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 06:34:55 +0000 (UTC)
Message-ID: <d2606312-1e04-55ff-e01e-daf83ed99836@linux.dev>
Date: Mon, 23 Jan 2023 22:34:36 -0800
MIME-Version: 1.0
Content-Language: en-US
To: Lorenzo Bianconi <lorenzo@kernel.org>
References: <cover.1674234430.git.lorenzo@kernel.org>
 <986321f8621e9367653e21b35566e7cda976b886.1674234430.git.lorenzo@kernel.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Martin KaFai Lau <martin.lau@linux.dev>
In-Reply-To: <986321f8621e9367653e21b35566e7cda976b886.1674234430.git.lorenzo@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-Mailman-Approved-At: Tue, 24 Jan 2023 16:03:29 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1674542090;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XoQl7uUFk5a4iB7hSBnRz259kIa6WGS8ZI2M0mlcDxc=;
 b=UJ00gwjq4gFjn29yUIgtP3vJKG2pGDukPyC0hkIVIP2nqN05joUBN4WcO+osDMjimoNFlw
 jsl0LQkfUx6HI3nz1gtWCAc7b2kCr0XlXsGZTlLXXEj3jCpUP8Pj0JXXPRLcpiWXydy+1m
 UfNa2J/CmihbLVVjWaz3Ys4ifQ5VFxU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=UJ00gwjq
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 7/7] selftests/bpf: introduce
 XDP compliance test tool
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 niklas.soderlund@corigine.com, andrii@kernel.org,
 intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com, kuba@kernel.org,
 pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, bpf@vger.kernel.org, magnus.karlsson@intel.com,
 leon@kernel.org, netdev@vger.kernel.org, toke@redhat.com,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/20/23 9:16 AM, Lorenzo Bianconi wrote:
> +static __always_inline int xdp_process_echo_packet(struct xdp_md *xdp, bool dut)
> +{
> +	void *data_end = (void *)(long)xdp->data_end;
> +	__be32 saddr = dut ? tester_ip : dut_ip;
> +	__be32 daddr = dut ? dut_ip : tester_ip;
> +	void *data = (void *)(long)xdp->data;
> +	struct ethhdr *eh = data;
> +	struct tlv_hdr *tlv;
> +	struct udphdr *uh;
> +	struct iphdr *ih;
> +	__be16 port;
> +	__u8 *cmd;
> +
> +	if (eh + 1 > (struct ethhdr *)data_end)
> +		return -EINVAL;
> +
> +	if (eh->h_proto != bpf_htons(ETH_P_IP))
> +		return -EINVAL;

Both v6 and v4 support are needed as a tool.

[ ... ]

> diff --git a/tools/testing/selftests/bpf/test_xdp_features.sh b/tools/testing/selftests/bpf/test_xdp_features.sh
> new file mode 100755
> index 000000000000..98b8fd2b6c16
> --- /dev/null
> +++ b/tools/testing/selftests/bpf/test_xdp_features.sh
> @@ -0,0 +1,99 @@
> +#!/bin/bash
> +# SPDX-License-Identifier: GPL-2.0
> +
> +# Create 2 namespaces with two veth peers, and
> +# check reported and detected XDP capabilities
> +#
> +#   NS0(v00)              NS1(v11)
> +#       |                     |
> +#       |                     |
> +# (v01, id:111)  ------  (v10,id:222)
> +
> +readonly NS0="ns1-$(mktemp -u XXXXXX)"
> +readonly NS1="ns2-$(mktemp -u XXXXXX)"
> +ret=1
> +
> +setup() {
> +	{
> +		ip netns add ${NS0}
> +		ip netns add ${NS1}
> +
> +		ip link add v01 index 111 type veth peer name v00 netns ${NS0}
> +		ip link add v10 index 222 type veth peer name v11 netns ${NS1}
> +
> +		ip link set v01 up
> +		ip addr add 10.10.0.1/24 dev v01
> +		ip link set v01 address 00:11:22:33:44:55
> +		ip -n ${NS0} link set dev v00 up
> +		ip -n ${NS0} addr add 10.10.0.11/24 dev v00
> +		ip -n ${NS0} route add default via 10.10.0.1
> +		ip -n ${NS0} link set v00 address 00:12:22:33:44:55
> +
> +		ip link set v10 up
> +		ip addr add 10.10.1.1/24 dev v10
> +		ip link set v10 address 00:13:22:33:44:55
> +		ip -n ${NS1} link set dev v11 up
> +		ip -n ${NS1} addr add 10.10.1.11/24 dev v11
> +		ip -n ${NS1} route add default via 10.10.1.1
> +		ip -n ${NS1} link set v11 address 00:14:22:33:44:55
> +
> +		sysctl -w net.ipv4.ip_forward=1
> +		# Enable XDP mode
> +		ethtool -K v01 gro on
> +		ethtool -K v01 tx-checksumming off
> +		ip netns exec ${NS0} ethtool -K v00 gro on
> +		ip netns exec ${NS0} ethtool -K v00 tx-checksumming off
> +		ethtool -K v10 gro on
> +		ethtool -K v10 tx-checksumming off
> +		ip netns exec ${NS1} ethtool -K v11 gro on
> +		ip netns exec ${NS1} ethtool -K v11 tx-checksumming off
> +	} > /dev/null 2>&1
> +}
> +
> +cleanup() {
> +	ip link del v01 2> /dev/null
> +	ip link del v10 2> /dev/null
> +	ip netns del ${NS0} 2> /dev/null
> +	ip netns del ${NS1} 2> /dev/null
> +	[ "$(pidof xdp_features)" = "" ] || kill $(pidof xdp_features) 2> /dev/null
> +}
> +
> +test_xdp_features() {
> +	setup
> +
> +	## XDP_PASS
> +	ip netns exec ${NS1} ./xdp_features -f XDP_PASS -D 10.10.1.11 -T 10.10.0.11 v11 &
> +	ip netns exec ${NS0} ./xdp_features -t -f XDP_PASS -D 10.10.1.11 -C 10.10.1.11 -T 10.10.0.11 v00
> +
> +	[ $? -ne 0 ] && exit
> +
> +	# XDP_DROP
> +	ip netns exec ${NS1} ./xdp_features -f XDP_DROP -D 10.10.1.11 -T 10.10.0.11 v11 &
> +	ip netns exec ${NS0} ./xdp_features -t -f XDP_DROP -D 10.10.1.11 -C 10.10.1.11 -T 10.10.0.11 v00
> +
> +	[ $? -ne 0 ] && exit
> +
> +	## XDP_TX
> +	./xdp_features -f XDP_TX -D 10.10.0.1 -T 10.10.0.11 v01 &
> +	ip netns exec ${NS0} ./xdp_features -t -f XDP_TX -D 10.10.0.1 -C 10.10.0.1 -T 10.10.0.11 v00
> +
> +	## XDP_REDIRECT
> +	ip netns exec ${NS1} ./xdp_features -f XDP_REDIRECT -D 10.10.1.11 -T 10.10.0.11 v11 &
> +	ip netns exec ${NS0} ./xdp_features -t -f XDP_REDIRECT -D 10.10.1.11 -C 10.10.1.11 -T 10.10.0.11 v00
> +
> +	[ $? -ne 0 ] && exit
> +
> +	## XDP_NDO_XMIT
> +	./xdp_features -f XDP_NDO_XMIT -D 10.10.0.1 -T 10.10.0.11 v01 &
> +	ip netns exec ${NS0} ./xdp_features -t -f XDP_NDO_XMIT -D 10.10.0.1 -C 10.10.0.1 -T 10.10.0.11 v00
> +
> +	ret=$?
> +	cleanup
> +}
> +
> +set -e
> +trap cleanup 2 3 6 9
> +
> +test_xdp_features

This won't be run by bpf CI.

A selftest in test_progs is needed to test the libbpf changes in patch 6.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
